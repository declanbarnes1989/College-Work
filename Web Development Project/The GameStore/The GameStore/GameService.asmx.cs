using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using The_GameStore.Models;

namespace The_GameStore
{
    /// <summary>
    /// Summary description for GameService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/" )]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class GameService : System.Web.Services.WebService
    {
        private StoreContext db = new StoreContext();

        [WebMethod]
        public string[] GetGamesByName(string namePart)
        {
            List<string> games = new List<string>();

            if (namePart != "")
            {
                foreach (var Game in db.Games
                                                .Where(a => a.Name.Contains(namePart))
                                                .ToList())
                {
                    games.Add(Game.Name);
                }
            }
            return games.ToArray();
        }
    }
}
