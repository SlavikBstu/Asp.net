using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PhoneCatalog.Models
{
    public class clients
    {
        public string Number { get; set; }
        public string Surname { get; set; }
        public string Firstname { get; set; }
        public string Middlename { get; set; }
        public System.DateTime Bday { get; set; }
    }
}