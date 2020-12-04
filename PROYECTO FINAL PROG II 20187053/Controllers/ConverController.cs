using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using PROYECTO_FINAL_PROG_II_20187053.Models;

namespace PROYECTO_FINAL_PROG_II_20187053.Controllers
    {
            // GET: Conver
            public class ConverController : Controller
            {
                public ActionResult Index()
                {
                    return View(new Conversor());
                }

                [HttpPost]
                public object Index(Conversor c, string calculate, string FC)
                {

                    if (calculate == "sub")
                    {
                        c.tot = c.no1 * 58;
                    }

                    else
                    {
                        c.tot = c.no1 / 58;

                    }

                    if (FC == "CaF")
                    {
                    
                     c.totl = (c.no3 - 32) * 5 / 9;
                     }
                    else
                    {
                   
                     c.totl = (c.no3 * 9 / 5) + 32;
                    }

            return View(c);
                }
          
    }
}
