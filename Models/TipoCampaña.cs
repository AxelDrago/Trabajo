using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace Trabajo.Models
{
    public class TipoCampaña
    {
         public int Id { get; set; }
        [Required]
        public string Nombre { get; set; }
        public List<Campañas> Campañas { get; set; }
    }
}