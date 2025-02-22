using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class voirMembres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int refMesgAlire = Convert.ToInt32(Request.QueryString["refMembre"]);



            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");
            mycon.Open();



            string sql = "SELECT NomUtilisateur , Sexe , GroupeEthnique , Raison , DateNaissance FROM Membres  where NumUser = "+ refMesgAlire;


            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();

           
            if (myrder.Read() == true)
            {
                lblNom.Text =  myrder["NomUtilisateur"].ToString();
                lblSexe.Text = myrder["Sexe"].ToString();
                lblGroupeEthenique.Text = myrder["GroupeEthnique"].ToString();
                lblRaison.Text=myrder["Raison"].ToString();
                DateTime dateNaissance = Convert.ToDateTime(myrder["DateNaissance"]);
                lblDateNaissance.Text = dateNaissance.ToString("dd/MM/yyyy");
             

            }
            myrder.Close();
            mycon.Close();
        }

      
    }
}