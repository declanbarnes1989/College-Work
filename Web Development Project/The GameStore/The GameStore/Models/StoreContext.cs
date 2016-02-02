using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace The_GameStore.Models
{
    public class StoreContext : DbContext
    {
        // Constructor
        public StoreContext() : base("StoreContext")
        {

        }

        // Properties
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Developer> Developers { get; set; }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<Game> Games { get; set; }
    }
}