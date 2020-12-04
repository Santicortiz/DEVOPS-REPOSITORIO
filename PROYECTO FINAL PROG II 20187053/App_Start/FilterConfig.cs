using System.Web;
using System.Web.Mvc;

namespace PROYECTO_FINAL_PROG_II_20187053
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
