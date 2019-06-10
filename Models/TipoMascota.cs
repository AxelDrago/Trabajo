
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Trabajo.Models
{
    public class TipoMascota
    {
        public int Id { get; set; }
        [Required]
        public string Nombre { get; set; }
        public List<Mascota> Mascotas { get; set; }
    }
}