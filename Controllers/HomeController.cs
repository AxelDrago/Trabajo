using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Trabajo.Models;
using Microsoft.EntityFrameworkCore;

namespace Proyecto_Multiplataforma.Controllers
{
    public class HomeController: Controller
    {
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