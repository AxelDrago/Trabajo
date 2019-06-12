using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Trabajo.Models;
using Microsoft.EntityFrameworkCore;


namespace Trabajo.Controllers
{
    public class HomeController: Controller
    {

        public IActionResult Index(int tipomascota)
        {
            ViewBag.Tipos = _context.Tipos.ToList();
            var mascotas = _context.Mascotas.Include(x => x.Tipo).ToList();

            if(tipomascota != 0){
                mascotas = _context.Mascotas.Include(x => x.Tipo)
                            .Where(x => x.TipoId == tipomascota).ToList();
            }
            return View(mascotas);
        }

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

        public IActionResult Campañas() { 
            return View(); 
        }

        public IActionResult Esterilizaciones() { 
            return View(); 
        }

        public IActionResult Contacto() {
            return View();
        }
    }
}