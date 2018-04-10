using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebForms_Example.Startup))]
namespace WebForms_Example
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
