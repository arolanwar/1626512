using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Linq;
using Microsoft.Owin.Security;
using System.Web;

namespace WebApplication2
{
    public partial class Register : System.Web.UI.Page
    { 
        protected void CreateUser_Click(object sender, EventArgs e)
    {
        var identityDbContext = new IdentityDbContext("IdentityConnectionString");
        var userStore = new UserStore<IdentityUser>();
        //var manager = new UserManager<IdentityUser>(userStore);
        var manager = new UserManager<IdentityUser>(new UserStore<IdentityUser>(new IdentityDbContext("IdentityConnectionString")));


        var user = new IdentityUser() { UserName = UserName.Text };
        IdentityResult result = manager.Create(user, Password.Text);
            
        if (result.Succeeded)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            StatusMessage.Text = result.Errors.FirstOrDefault();
        }

    }
  }
}
