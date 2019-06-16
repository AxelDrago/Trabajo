using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Trabajo.Models;
using Microsoft.EntityFrameworkCore;


namespace Trabajo.Controllers
{
    public class HomeController: Controller
    {
        public IActionResult Index(int tipomascota, int sexomascota, int edadmascota)
        {
            ViewBag.Tipos = _context.Tipos.ToList();
            var mascotas = _context.Mascotas.Include(x => x.Tipo).ToList();

            if(tipomascota != 0){
                mascotas = _context.Mascotas.Include(x => x.Tipo)
                            .Where(x => x.TipoId == tipomascota).ToList();
            }

            if(sexomascota != 2){
                if(sexomascota == 1){
                    mascotas = _context.Mascotas.Where(x => x.Sexo == sexomascota.ToString()).ToList();
                }else{
                    mascotas = _context.Mascotas.Where(x => x.Sexo == sexomascota.ToString()).ToList();
                }
            }

            if(edadmascota != 0){
                for(var i = 1; i < 11; i++){
                    if(edadmascota == i){
                        mascotas = _context.Mascotas.Where(x => x.Edad == edadmascota).ToList();
                    }
                }
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

        public IActionResult Evento() { 
             ViewBag.TipoC = _context.TipoC.ToList();
            return View(); 
        }
        [HttpPost]
        public IActionResult Evento(Evento c) { 
              if (ModelState.IsValid){
                _context.Add(c);
                _context.SaveChanges();

                return RedirectToAction("ListaEvento");
            }
            ViewBag.TipoC = _context.TipoC.ToList();

            return View();
        }

        public IActionResult ListaEvento(int tipoevento) { 
            ViewBag.TipoC = _context.TipoC.ToList();
            var Evento = _context.Evento.Include(x => x.Tipo).ToList();

            if(tipoevento != 0){
                Evento = _context.Evento.Include(x => x.Tipo)
                            .Where(x => x.TipoId == tipoevento).ToList();
            }
            return View(Evento);
        }

        public IActionResult Contacto() {
            ViewBag.Sugerencias = _context.Sugerencias.ToList();
            return View();
        }

        [HttpPost]
        public IActionResult Contacto(Contacto r)
        {
            if (ModelState.IsValid) {
                _context.Add(r);
                _context.SaveChanges();
                return RedirectToAction("Confirmacion");
            }
            ViewBag.Sugerencias = _context.Sugerencias.ToList();
            return View(r);
        }
        public IActionResult Confirmacion() {
            return View();
        }   

    }
}