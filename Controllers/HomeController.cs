using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Trabajo.Models;
using Microsoft.EntityFrameworkCore;
using Trabajo.Models;

namespace Trabajo.Controllers
{
    public class HomeController: Controller
    {
        private ICareContext _context;

        public HomeController(ICareContext c){
            _context = c;
        }
         public IActionResult RegistroMascota()
        {
            ViewBag.Tipos = _context.Tipos.ToList();

            return View();
        }

        [HttpPost]
        public IActionResult RegistroMascota(Mascota m)
        {
            if (ModelState.IsValid){
                _context.Add(m);
                _context.SaveChanges();

                return RedirectToAction("index");
            }
            ViewBag.Tipos = _context.Tipos.ToList();

            return View();
        }
    }
}