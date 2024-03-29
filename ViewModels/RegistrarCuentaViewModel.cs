using System.ComponentModel.DataAnnotations;


namespace Trabajo.ViewModels
{
    public class RegistrarCuentaViewModel
    {
        [Required]
        public string Usuario { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        

        [Required]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "La contraseña y la confirmación no coinciden.")]
        public string PasswordConfirmacion { get; set; }
    }
}