using System.ComponentModel.DataAnnotations;
namespace Trabajo.Models
{
    public class Mascota
    {
        public int Id { get; set; }
        [Required]
        public string NombreTemporal { get; set; }
        [Required]
        public string Descripcion { get; set; }                  
        [Required]
        public int Edad { get; set; }
        [Required]
        public TipoMascota Tipo { get; set; }
        [Required]
        public string Foto { get; set; }
        public int TipoId { get; set; }
        [Required]
        public string Raza { get; set; }
    }
}