using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;


namespace ADORO_MVC.Models
{
    public class Usuario
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Nombre { get; set; }

        public string Apellido { get; set; }

        [Display(Name = "Nombre de Usuario")]
        public string UserName { get; set; }

        [Display(Name = "Constraseña")]
        public string Password { get; set; }

        [EnumDataType(typeof(Rol))]
        public Rol Rol { get; set; }
    }
}
