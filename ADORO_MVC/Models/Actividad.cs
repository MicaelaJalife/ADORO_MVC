using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ADORO_MVC.Models
{
    public class Actividad
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Nombre { get; set; }

        [EnumDataType(typeof(TipoActividad))]        
        [Display(Name = "Tipo de Actividad")] 
        public TipoActividad TipoActividad { get; set; }
        
        [EnumDataType(typeof(GeneroActividad))]
        [Display(Name = "Genero de Actividad")]
        public GeneroActividad GeneroActividad { get; set; }

        public string Descripcion { get; set; } // sirve para un texto largo?
        //[Display(Name = "Fecha inscripción")]
                
        [EnumDataType(typeof(EstadoActividad))]
        [Display(Name = "Estado Actividad")]
        public EstadoActividad EstadoAct { get; set; }

        [Display(Name = "Fecha Inicio")]
        public DateTime FechaInicio { get; set; }

        [Display(Name = "Fecha Fin")]
        public DateTime FechaFin { get; set; }

        public string Imagen { get; set; }

        [Display(Name = "Sala ID")]
        public int SalaId { get; set; }

    }
}
