using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PROYECTO_FINAL_PROG_II_20187053.Models;

namespace PROYECTO_FINAL_PROG_II_20187053.Controllers
{
    public class NOMINASController : Controller
    {
        private PROYECTOFINALEntities db = new PROYECTOFINALEntities();

        // GET: NOMINAS
        public ActionResult Index()
        {
            return View(db.NOMINAS.ToList());
        }

        // GET: NOMINAS/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NOMINAS nOMINAS = db.NOMINAS.Find(id);
            if (nOMINAS == null)
            {
                return HttpNotFound();
            }
            return View(nOMINAS);
        }

        // GET: NOMINAS/Create
        public ActionResult Create()
        {
            var acumulado = from tabla in db.Empleados select tabla;

            ViewBag.Suma = acumulado.Sum(tabla => tabla.Salario);
            return View();
        }

        // POST: NOMINAS/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Mes,Año,Monto")] NOMINAS nOMINAS)
        {
            if (ModelState.IsValid)
            {
                var acumulado = from tabla in db.Empleados select tabla;

                int tot = acumulado.Sum(tabla => tabla.Salario);
                nOMINAS.Monto = tot;
                db.NOMINAS.Add(nOMINAS);
                db.SaveChanges();
                return RedirectToAction("Index");

            }
            return View(nOMINAS);
        }

        // GET: NOMINAS/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NOMINAS nOMINAS = db.NOMINAS.Find(id);
            if (nOMINAS == null)
            {
                return HttpNotFound();
            }
            return View(nOMINAS);
        }

        // POST: NOMINAS/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Mes,Año,Monto")] NOMINAS nOMINAS)
        {
            if (ModelState.IsValid)
            {
                var acumulado = from tabla in db.Empleados
                                select tabla;

                int tot = acumulado.Sum(tabla => tabla.Salario);
                nOMINAS.Monto = tot;
                db.NOMINAS.Add(nOMINAS);
                db.SaveChanges();
                return RedirectToAction("Index");

            }
            return View(nOMINAS);
        }

        // GET: NOMINAS/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NOMINAS nOMINAS = db.NOMINAS.Find(id);
            if (nOMINAS == null)
            {
                return HttpNotFound();
            }
            return View(nOMINAS);
        }

        // POST: NOMINAS/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NOMINAS nOMINAS = db.NOMINAS.Find(id);
            db.NOMINAS.Remove(nOMINAS);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
