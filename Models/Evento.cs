using System.ComponentModel.DataAnnotations;
namespace Trabajo.Models
{
    public class Evento
    {
        public int Id { get; set; }
        [Required]
        public string Titulo { get; set; }
        [Required]
        public string Contenido { get; set; } 
        public TipoEvento Tipo { get; set; }
        public string Foto { get; set; }
        public int TipoId { get; set; }               
    }
}