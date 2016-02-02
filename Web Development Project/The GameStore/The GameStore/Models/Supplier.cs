using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_GameStore.Models
{
    public class Supplier
    {
        public int SupplierId { get; set; }
        public String Name { get; set; }
        public int ContactNumber { get; set; }
        public String Email { get; set; }

        public virtual ICollection<Game> Games { get; set; }
    }
}