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
using System.Data;
using System.Data.OleDb;

namespace BLS_Inventory
{
    public static class Common
    {
        public static DataTable ExcelToTables(string strFilename)
        {
            DataSet myDs = new DataSet();
            
            Microsoft.Office.Interop.Excel.Application oXL = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.ApplicationClass app = new Microsoft.Office.Interop.Excel.ApplicationClass();
            Microsoft.Office.Interop.Excel.Worksheet oSheet;
            try
            {
                string ext = Path.GetExtension(strFilename);
                bool hasHeaders = false;
                string HDR = hasHeaders ? "Yes" : "No";
                string strConn;
                if (ext.ToLower() == ".xls")
                {
                    strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + strFilename + " ;Extended Properties=\"Excel 8.0;HDR=" + HDR + ";IMEX=1\"";
                    Microsoft.Office.Interop.Excel.WorkbookClass workBook = (Microsoft.Office.Interop.Excel.WorkbookClass)app.Workbooks.Open(strFilename, 0, true, 5, "", "", true, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
                    oSheet = (Microsoft.Office.Interop.Excel.Worksheet)workBook.ActiveSheet;
                    app.Visible = false;

                    OleDbDataAdapter myCmd = new OleDbDataAdapter("SELECT * FROM [" + oSheet.Name + "$]", strConn);
                    myCmd.Fill(myDs);
                }

                if (ext.ToLower() == ".xlsx")
                {
                    strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + strFilename + ";Extended Properties=\"Excel 12.0;HDR=NO" + ";IMEX=1\"";
                    Microsoft.Office.Interop.Excel.WorkbookClass workBook = (Microsoft.Office.Interop.Excel.WorkbookClass)app.Workbooks.Open(strFilename, 0, true, 5, "", "", true, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
                    oSheet = (Microsoft.Office.Interop.Excel.Worksheet)workBook.ActiveSheet;
                    OleDbDataAdapter myCmd = new OleDbDataAdapter("SELECT * FROM [" + oSheet.Name + "$]", strConn);
                    myCmd.Fill(myDs);
                }
            }
            catch (Exception ex)
            {
                return null;
            }
            return myDs.Tables[0];
        }

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