using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class ecrireMessageFriendbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");
            mycon.Open();


            string sql = "SELECT NumUser, NomUtilisateur FROM Membres ORDER BY NomUtilisateur ";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();


            while (myrder.Read() == true)
            {

                ListItem element = new ListItem();
                element.Text = myrder["NomUtilisateur"].ToString();
                element.Value = myrder["NumUser"].ToString();
                cboDestinataires.Items.Add(element);

            }
            myrder.Close();
            mycon.Close();
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");
            mycon.Open();

            string sujet = txtSujet.Text;
            string contenu = txtMessage.Text;
            string today = DateTime.Today.ToShortDateString();
            string numRe = cboDestinataires.SelectedItem.Value;
            string numEnvoyeur = Session["Num"].ToString();

            string sql = "INSERT INTO Messages (Titre , Contenu , [Date] , Envoyeur, Receveur, Nouveau ) VALUES ('" + sujet + "' , '" + contenu + "','" + today + "','" + numRe + "','" + numEnvoyeur + "','True' );";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();

            lbltxtConfirmation.Text = "Message envoyé avec succès. ";
            txtSujet.Text = "";
            txtMessage.Text = "";
            txtSujet.Focus();


        }

        protected void btnEffacer_Click(object sender, EventArgs e)
        {
            txtSujet.Text = "";
            txtMessage.Text = "";
            lbltxtConfirmation.Text = "";

            txtSujet.Focus();
        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessagesFriendbook.aspx");
        }
    }
}