using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace APBD_Task4.Models
{
    public class Student
    {
        [Required(ErrorMessage ="This field is required!")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "This field is required!")]
        public string LastName { get; set; }
        public DateTime BirthDate { get; set; }
        [Required(ErrorMessage = "This field is required!")]
        public string StudiesName { get; set; }
        [Required(ErrorMessage = "This field is required!")]
        public int Semester { get; set; }
    }
}
