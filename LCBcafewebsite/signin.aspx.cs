using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LCBcafewebsite
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("LCBcafe");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var user = new IdentityUser() { UserName = TextBoxUNreg.Text};
            IdentityResult result = manager.Create(user, PasswordReg.Text);
            if (result.Succeeded)
            {
                IdentityRole endUserRole = new IdentityRole("endUser");
                roleManager.Create(endUserRole);
                Server.Transfer("Admin.aspx", true);
            }
            {
                LiteralReg.Text = "Fail to register " + result.Errors.FirstOrDefault();
            }
        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("LCBcafe");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(TextBoxUNSignIn.Text, PasswordSignIn.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Server.Transfer("Admin.aspx", true);
            }
            else
            {
                LiteralSignin.Text = "Sign in fail";
            }
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenthicationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenthicationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }
    }
}