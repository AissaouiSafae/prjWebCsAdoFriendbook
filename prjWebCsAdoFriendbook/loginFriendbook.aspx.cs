using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class loginFriendbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscrireFriendbook.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string nom = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename="+ Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");
        
            mycon.Open();

            string sql = "SELECT NomUtilisateur , NumUser FROM Membres WHERE NomUtilisateur='" + nom + "'AND MotDePasse='" + password + "'";


            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();
    

            if (myrder.Read() == false)
            {

                myrder.Close();
                mycon.Close();
                lblError.Text = "Invalid username or password. Please try again.";



            }
            else
            {
          
              
                Session["Nom"] = myrder["NomUtilisateur"];

                Session["Num"] = myrder["NumUser"];
                myrder.Close();
                mycon.Close();
                Response.Redirect("acceuilFriendbook.aspx");


            }




        }

        protected void btnIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexFriendbook.aspx");
        }
    }
}