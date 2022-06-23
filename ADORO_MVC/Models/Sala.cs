using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ADORO_MVC.Models
{
    public class Sala
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        public string Nombre { get; set; }

        [Display(Name = "Capacidad Máxima")]
        public int CapacidadMax { get; set; }

        [Display(Name = "Es al aire libre")]
        public bool AlAireLibre { get; set; }

    }
}
