using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(The_GameStore.Startup))]
namespace The_GameStore
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
