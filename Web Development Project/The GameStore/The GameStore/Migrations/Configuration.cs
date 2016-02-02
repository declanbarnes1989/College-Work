namespace The_GameStore.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<The_GameStore.Models.StoreContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(The_GameStore.Models.StoreContext context)
        {
            context.Customers.AddOrUpdate(x => x.CustomerId,
        new Models.Customer() {CustomerId= 1, FirstName = "Jane", LastName = "Austen", Address = "18 Pearse tce,Arklow", Email = "jane@Gmail.com" },
        new Models.Customer() {CustomerId =2, FirstName = "John", LastName = "Bloggs", Address = "Spear Rd,New York", Email = "John@Outlook.com" },
        new Models.Customer() { CustomerId = 3,FirstName = "Michael", LastName = "Condren", Address = "21st Evert Rd, Dublin", Email = "Michael1881@Gmail.com" },
        new Models.Customer() { CustomerId = 4,FirstName = "Stacy", LastName = "Gannon", Address = "121 St Queens Rd, London", Email = "Stacy1989@Gmail.com" }
        );

            context.Developers.AddOrUpdate(x => x.DeveloperId,
        new Models.Developer() { DeveloperId=1, Name = "Ubisoft", GamesDeveloped = "Assassins Creed", Location = "Quebec,Canada" },
        new Models.Developer() { DeveloperId = 2, Name = "BioWare", GamesDeveloped = "Mass Effect", Location = "Edmongton, Canada" },
        new Models.Developer() { DeveloperId = 3, Name = "Activision", GamesDeveloped = "Crysis", Location = "San Jose, California" },
        new Models.Developer() { DeveloperId = 4, Name = "Electronic Arts", GamesDeveloped = "Fifa 2016", Location = "Redwood city, California" }
        );

            context.Games.AddOrUpdate(x => x.GameId,
        new Models.Game() { GameId=1, Name = "The Division", DateOfRelease = DateTime.Parse("17-03-2016"), },
        new Models.Game() { GameId = 2, Name = "Call Of Duty Black Ops 3", DateOfRelease = DateTime.Parse("23 - 11 - 2015"), },
        new Models.Game() { GameId = 3, Name = "Hitman 5", DateOfRelease = DateTime.Parse("06 - 04 - 2016"), },
        new Models.Game() { GameId = 4, Name = "Need For Speed", DateOfRelease = DateTime.Parse("13 - 12 - 2015"), }
        );

            context.Suppliers.AddOrUpdate(x => x.SupplierId,
        new Models.Supplier() { SupplierId=1, Name = "Gamer Ltd", ContactNumber = 01213422, Email = "sales@GamerLtd.com" },
        new Models.Supplier() { SupplierId = 2, Name = "Console Suppliers", ContactNumber = 01657888, Email = "Sales@ConsoleSp.com" },
        new Models.Supplier() { SupplierId = 3, Name = "Xbit Sales", ContactNumber = 01437754, Email = "Sales@Xbit.com" },
        new Models.Supplier() { SupplierId = 4, Name = "Hubble Ltd", ContactNumber = 01912678, Email = "Sales@Hubble.com" }
        );
        }
    }
}