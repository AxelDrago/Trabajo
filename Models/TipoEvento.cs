using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace Trabajo.Models
{
    public class TipoEvento
    {
         public int Id { get; set; }
        [Required]
        public string Nombre { get; set; }
        public List<Evento> Evento { get; set; }
    }
}