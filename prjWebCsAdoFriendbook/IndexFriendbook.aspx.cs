 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class IndexFriendbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void LinkLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginFriendbook.aspx");
        }

        protected void LinkSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscrireFriendbook.aspx");
        }
    }
}