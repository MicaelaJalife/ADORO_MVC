using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ADORO_MVC.Models;
namespace ADORO_MVC.Context
{
    public class AdoroDatabaseContext : DbContext
    {
        public AdoroDatabaseContext(DbContextOptions<AdoroDatabaseContext> options) : base(options)
        {
        }
        public DbSet<Sala> Salas { get; set; }
        public DbSet<Actividad> Actividades { get; set; }
        public DbSet<Usuario> Usuario { get; set; }

    }
}
