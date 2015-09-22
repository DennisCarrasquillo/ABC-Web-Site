using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Reflection;
using System.ComponentModel;
using System.Xml;
using System.Xml.Serialization;
using ClientDB;

namespace ABC_Inventory
{
    public static class Common
    {
        public static void CopyProperties(object Source, object Target, bool CopyRecursively)
        {
            PropertyDescriptorCollection sourceProps = TypeDescriptor.GetProperties(Source);
            PropertyDescriptorCollection targetProps = TypeDescriptor.GetProperties(Target);
            foreach (PropertyDescriptor sourceP in sourceProps)
            {
                var SType = Source.GetType();                                // Get Source Property type
                string sName = sourceP.Name;                                 // get source property name
                var sValue = sourceP.GetValue(Source);                       // get source propety value
                if (sValue == null)                                          // is source property == null ignore it
                    continue;

                var THasProp = (from PropertyDescriptor t in targetProps
                               where t.Name == sName
                               select t).FirstOrDefault();
                var SProp = Source.GetType().GetProperty(sName);            // Get source Property
                var TProp = Target.GetType().GetProperty(sName);            // Get target property
                if (THasProp != null)                                       // Target contains property
                {
                    if (TProp.GetType().IsClass && CopyRecursively)                            // Is Property a class?
                    {
                        if (TProp == null)                                  // is class instantiated?
                        {
                            TProp = (PropertyInfo)Activator.CreateInstance(TProp.GetType());   // Instantiate class
                        }
                        CopyProperties(SProp, TProp, true);                       // Copy properties of sub-class
                        continue;
                    }
                    TProp.SetValue(Target, sValue);                         // set target property value to source property value
                }
            }
        }

        public static string ObjectToXML(object Obj)
        {
            string strXML = "";
            XmlSerializer x = new XmlSerializer(Obj.GetType());
            MemoryStream memoryStream = new MemoryStream();
            using (XmlTextWriter xmlTextWriter =
                new XmlTextWriter(memoryStream, Encoding.UTF8) { Formatting = Formatting.Indented })
            {
                x.Serialize(xmlTextWriter, Obj);
                memoryStream = (MemoryStream)xmlTextWriter.BaseStream;
                strXML = new UTF8Encoding().GetString(memoryStream.ToArray());
                if (strXML.Substring(1, 5) == "<?xml")
                {
                    int i = strXML.IndexOf('>');
                    strXML = strXML.Substring(i + 3);
                }
                memoryStream.Dispose();
                return strXML;
            }
        }

        public static T XMLToObject<T>(String strXML)
        {
            T returnedXmlClass = default(T);
            //strXML = "?" + strXML;
            using (TextReader reader = new StringReader(strXML))
            {
                try
                {
                    returnedXmlClass = (T)new XmlSerializer(typeof(T)).Deserialize(reader);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                    //string msg = ex.Message;
                }
            }
            return returnedXmlClass;
        }
    }
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false, Inherited = true)]

    public class MultipleButtonAttribute : ActionNameSelectorAttribute
    {
        public string Name { get; set; }
        public string Argument { get; set; }

        public override bool IsValidName(ControllerContext controllerContext, string actionName, MethodInfo methodInfo)
        {
            var isValidName = false;
            var keyValue = string.Format("{0}:{1}", Name, Argument);
            var value = controllerContext.Controller.ValueProvider.GetValue(keyValue);

            if (value != null)
            {
                controllerContext.Controller.ControllerContext.RouteData.Values[Name] = Argument;
                isValidName = true;
            }

            return isValidName;
        }
    }

}