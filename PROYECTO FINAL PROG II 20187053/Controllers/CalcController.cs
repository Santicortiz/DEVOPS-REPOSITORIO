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
            public class CalcController : Controller
            {
                // GET: Calc
                public ActionResult Index()
                {
                   return View(new calc());
                }

                [HttpPost]
                public object Index(calc c, string calculate)
                {

                    if (calculate == "add")
                    {     
                        c.tot = c.no1 + c.no2;
                    }
                    else if (calculate == "min")
                    {
                        c.tot = c.no1 - c.no2;
                    }
                    else if (calculate == "sub")
                    {
                        c.tot = c.no1 * c.no2;
                    }

                    else
                     {
                      c.tot = c.no1 / c.no2;
                         
                    }
   
                    return View(c);


                }
            }
        }