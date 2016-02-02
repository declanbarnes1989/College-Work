using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_GameStore.Models
{
     public class Game
    {
        public int GameId { get; set; }
        public String Name { get; set; }
        public DateTime DateOfRelease { get; set; }

        public Developer Developer { get; set; }



        public virtual ICollection<Customer> Customers { get; set; }
        public virtual ICollection<Developer> Developers { get; set; }
        public virtual ICollection<Supplier> Suppliers { get; set; }
    }
}