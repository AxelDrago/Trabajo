using Microsoft.AspNetCore.Mvc;
using Trabajo.Models;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Trabajo.ViewModels;

namespace Trabajo.Controllers
{
    public class CuentaController:Controller
    {
        private ICareContext _context;
        private UserManager<IdentityUser> _userManager;
        private SignInManager<IdentityUser> _signInManager;


        public CuentaController(
            ICareContext i,
            UserManager<IdentityUser> um,
            SignInManager<IdentityUser> sim
        ){
            _context=i;
            _userManager=um;
            _signInManager=sim;

        }

        public IActionResult RegistrarCuenta() {
            return View();
         }

         [HttpPost]
         public IActionResult RegistrarCuenta(RegistrarCuentaViewModel model) {
            if (ModelState.IsValid) {
                var user = new IdentityUser();
                user.UserName = model.Usuario;
                user.Email = model.Email;

                var resultado = _userManager.CreateAsync(user, model.Password);

                if (resultado.Result == IdentityResult.Success) {

                    return RedirectToAction("index", "home");
                }
                else {
                    foreach (var error in resultado.Result.Errors) {
                        ModelState.AddModelError("error", error.Description);
                    }
                }
            }

            return View(model);
         }

         public IActionResult Login() {
            return View();
        }

        [HttpPost]
        public IActionResult Login(LoginViewModel model) {
            if (ModelState.IsValid) {
                var resultado = _signInManager.PasswordSignInAsync(model.Usuario, model.Password, false, false);

                if (resultado.Result.Succeeded) {
                    return RedirectToAction("index", "home");
                }
                else {
                    ModelState.AddModelError("error", "Usuario o contraseña incorrectos");
                
                }
            }

            return View(model);
        }

        public IActionResult Logout() {
            _signInManager.SignOutAsync();

            return RedirectToAction("index", "home");
        }

        public IActionResult modificarContrasena() {
            return View();
        }

        [HttpPost]
        public IActionResult modificarContrasena(modificarContrasenaViewModel vm) {
            if (ModelState.IsValid) {
                
                var user = _userManager.FindByNameAsync(User.Identity.Name).Result;
                var resultado = _userManager.ChangePasswordAsync(user, vm.ContrasenaActual, vm.ContrasenaNueva);

                if (resultado.Result == IdentityResult.Success) {
                    
                    return RedirectToAction("Index", "Home");
                }
                else {
                    foreach (var error in resultado.Result.Errors) {
                        ModelState.AddModelError("", error.Description);
                    }
                }
               
            }
            
            return View(vm);
        }






    }
}