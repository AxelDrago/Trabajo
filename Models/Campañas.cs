using System.ComponentModel.DataAnnotations;
namespace Trabajo.Models
{
    public class Campañas
    {
        public int Id { get; set; }
        [Required]
        public string Titulo { get; set; }
        [Required]
        public string Contenido { get; set; } 
        public int TipoId { get; set; }               
    }
}