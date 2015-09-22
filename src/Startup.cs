using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ABC_Inventory.Startup))]
namespace ABC_Inventory
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
