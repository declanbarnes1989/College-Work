using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_GameStore.Models
{
    public class Customer
    {
        public int CustomerId { get; set; }
        public String FirstName { get; set; }
        public String LastName { get; set; }
        public String Address { get; set; }
        public String Email { get; set; }

        public virtual ICollection<Game> Games { get; set; }
    }
}