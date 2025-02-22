using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class effacerMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int refMesgAlire = Convert.ToInt32(Request.QueryString["refMes"]);


            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");
            mycon.Open();



            string sql = "DELETE FROM Messages WHERE idMessage=" + refMesgAlire;
            SqlCommand mycmd = new SqlCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();
            Response.Redirect("MessagesFriendbook.aspx");

        }
    }
}