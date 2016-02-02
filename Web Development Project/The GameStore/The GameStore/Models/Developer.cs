using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_GameStore.Models
{
    public class Developer
    {
        public int DeveloperId { get; set; }
        public String Name { get; set; }
        public String GamesDeveloped { get; set; }
        public String Location { get; set; }

        public virtual ICollection<Game> Games { get; set; }
    }
}