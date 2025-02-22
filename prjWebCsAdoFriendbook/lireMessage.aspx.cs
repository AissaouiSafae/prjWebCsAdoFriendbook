using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class lireMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int refMesgAlire = Convert.ToInt32(Request.QueryString["refMes"]);


            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");
            mycon.Open();



            string sql = "SELECT Messages.Contenu , Messages.Titre ,Messages.Date, Messages.Nouveau, Membres.NomUtilisateur FROM Messages , Membres WHERE Membres.NumUser=Messages.Envoyeur  AND  Messages.idMessage=" + refMesgAlire;


            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();

    
            if (myrder.Read() == true)
            {
                string info = "<table><tr><td>Titre : </td> <td>" + myrder["Titre"] + "</td></tr>";
                info += "<tr><td> Envoyeur : </td> <td>" + myrder["NomUtilisateur"] + "</td></tr>";
                info += "<tr><td> Date : </td> <td>" + myrder["Date"] + "</td></tr>";
                info += "<tr><td> Contenu  : </td> <td>" + myrder["Contenu"] + "</td></tr></table> ";

                lblMessage.Text = info;

            }
            myrder.Close();
            
            sql = "UPDATE Messages SET Nouveau='False' WHERE idMessage=" + refMesgAlire;
            SqlCommand mycmd2 = new SqlCommand(sql, mycon);
            mycmd2.ExecuteNonQuery();


            mycon.Close();

        }

        protected void btnRetourner_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessagesFriendbook.aspx");
        }
    }
}