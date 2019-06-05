using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Trabajo.Models;
namespace Trabajo.Models
{
    public class ICareContext: IdentityDbContext
    {

        public DbSet<Mascota> Mascotas { get; set; }
         public DbSet<TipoMascota> Tipos { get; set; }

        public ICareContext(DbContextOptions<ICareContext> options) : base(options) { }

    
    }
}