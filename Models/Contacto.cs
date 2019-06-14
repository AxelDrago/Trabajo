using System;
using System.ComponentModel.DataAnnotations;

namespace Trabajo.Models
{
    public class Contacto
    {   
        public int Id { get; set; }
        [Required]
        public string Nombre { get; set; }
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        public string Descripcion { get; set; }                 
    }
}