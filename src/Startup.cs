using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BLS_Inventory.Startup))]
namespace BLS_Inventory
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
