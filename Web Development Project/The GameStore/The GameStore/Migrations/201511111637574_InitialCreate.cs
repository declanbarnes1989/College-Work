namespace The_GameStore.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Customers",
                c => new
                    {
                        CustomerId = c.Int(nullable: false, identity: true),
                        FirstName = c.String(),
                        LastName = c.String(),
                        Address = c.String(),
                        Email = c.String(),
                    })
                .PrimaryKey(t => t.CustomerId);
            
            CreateTable(
                "dbo.Games",
                c => new
                    {
                        GameId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        DateOfRelease = c.DateTime(nullable: false),
                        Developer_DeveloperId = c.Int(),
                        Developer_DeveloperId1 = c.Int(),
                    })
                .PrimaryKey(t => t.GameId)
                .ForeignKey("dbo.Developers", t => t.Developer_DeveloperId)
                .ForeignKey("dbo.Developers", t => t.Developer_DeveloperId1)
                .Index(t => t.Developer_DeveloperId)
                .Index(t => t.Developer_DeveloperId1);
            
            CreateTable(
                "dbo.Developers",
                c => new
                    {
                        DeveloperId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        GamesDeveloped = c.String(),
                        Location = c.String(),
                        Game_GameId = c.Int(),
                    })
                .PrimaryKey(t => t.DeveloperId)
                .ForeignKey("dbo.Games", t => t.Game_GameId)
                .Index(t => t.Game_GameId);
            
            CreateTable(
                "dbo.Suppliers",
                c => new
                    {
                        SupplierId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        ContactNumber = c.Int(nullable: false),
                        Email = c.String(),
                    })
                .PrimaryKey(t => t.SupplierId);
            
            CreateTable(
                "dbo.GameCustomers",
                c => new
                    {
                        Game_GameId = c.Int(nullable: false),
                        Customer_CustomerId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Game_GameId, t.Customer_CustomerId })
                .ForeignKey("dbo.Games", t => t.Game_GameId, cascadeDelete: true)
                .ForeignKey("dbo.Customers", t => t.Customer_CustomerId, cascadeDelete: true)
                .Index(t => t.Game_GameId)
                .Index(t => t.Customer_CustomerId);
            
            CreateTable(
                "dbo.SupplierGames",
                c => new
                    {
                        Supplier_SupplierId = c.Int(nullable: false),
                        Game_GameId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Supplier_SupplierId, t.Game_GameId })
                .ForeignKey("dbo.Suppliers", t => t.Supplier_SupplierId, cascadeDelete: true)
                .ForeignKey("dbo.Games", t => t.Game_GameId, cascadeDelete: true)
                .Index(t => t.Supplier_SupplierId)
                .Index(t => t.Game_GameId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.SupplierGames", "Game_GameId", "dbo.Games");
            DropForeignKey("dbo.SupplierGames", "Supplier_SupplierId", "dbo.Suppliers");
            DropForeignKey("dbo.Developers", "Game_GameId", "dbo.Games");
            DropForeignKey("dbo.Games", "Developer_DeveloperId1", "dbo.Developers");
            DropForeignKey("dbo.Games", "Developer_DeveloperId", "dbo.Developers");
            DropForeignKey("dbo.GameCustomers", "Customer_CustomerId", "dbo.Customers");
            DropForeignKey("dbo.GameCustomers", "Game_GameId", "dbo.Games");
            DropIndex("dbo.SupplierGames", new[] { "Game_GameId" });
            DropIndex("dbo.SupplierGames", new[] { "Supplier_SupplierId" });
            DropIndex("dbo.GameCustomers", new[] { "Customer_CustomerId" });
            DropIndex("dbo.GameCustomers", new[] { "Game_GameId" });
            DropIndex("dbo.Developers", new[] { "Game_GameId" });
            DropIndex("dbo.Games", new[] { "Developer_DeveloperId1" });
            DropIndex("dbo.Games", new[] { "Developer_DeveloperId" });
            DropTable("dbo.SupplierGames");
            DropTable("dbo.GameCustomers");
            DropTable("dbo.Suppliers");
            DropTable("dbo.Developers");
            DropTable("dbo.Games");
            DropTable("dbo.Customers");
        }
    }
}
