using System.Linq;
using System.Reflection;
public static class ExtensionMethods
{

    /// <summary>
    /// Copy properties of same name from one object to another
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <typeparam name="U"></typeparam>
    /// <param name="source"></param>
    /// <param name="dest"></param>
    /// 
    /// Usage:
    ///     Foo foo = new Foo();
    ///     Bar bar = GetBar();
    ///     bar.CopyPropertiesTo<Bar, Foo>(foo);
    public static void CopyPropertiesTo<T, U>(this T source, U dest)
    {
        var plistsource = from prop1 in typeof(T).GetProperties() where prop1.CanRead select prop1;
        var plistdest = from prop2 in typeof(U).GetProperties() where prop2.CanWrite select prop2;

        foreach (PropertyInfo destprop in plistdest)
        {
            var sourceprops = plistsource.Where(p => p.Name == destprop.Name &&
              destprop.PropertyType.IsAssignableFrom(p.GetType()));
            foreach (PropertyInfo sourceprop in sourceprops)
            { // should only be one
                destprop.SetValue(dest, sourceprop.GetValue(source, null), null);
            }
        }
    }
}