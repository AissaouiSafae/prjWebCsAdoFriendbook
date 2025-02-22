using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class acceuilFriendbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbtBienvenu.Text = "Bienvenue " + Session["Nom"] + " Cliquez sur Recherche si vous souhaitez trouver quelqu'un, ou sur Message pour composer un message.";
            }
            remplirListRecherche();
            remplirListGroupeEthenique();
            remplirListRaison();
            remplirListCategorieAge();



        }

        private void remplirListRaison()
        {
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");

            mycon.Open();

            string sql = "SELECT DISTINCT Raison FROM Membres";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();


            while (myrder.Read() == true)
            {

                ListItem element = new ListItem();
                element.Text = myrder["Raison"].ToString();
                cboListChercherRaison.Items.Add(element);

            }
            myrder.Close();
            mycon.Close();
        }


        private void remplirListCategorieAge()
        {
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");

            mycon.Open();

            string sql = "SELECT DISTINCT CategorieAge FROM Membres";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();


            while (myrder.Read() == true)
            {

                ListItem element = new ListItem();
                element.Text = myrder["CategorieAge"].ToString();
                cboListChercherAge.Items.Add(element);

            }
            myrder.Close();
            mycon.Close();
        }

        private void remplirListGroupeEthenique()
        {
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");

            mycon.Open();

            string sql = "SELECT DISTINCT GroupeEthnique FROM Membres";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();


            while (myrder.Read() == true)
            {

                ListItem element = new ListItem();
                element.Text = myrder["GroupeEthnique"].ToString();
                cboListChercherGrpEth.Items.Add(element);

            }
            myrder.Close();
            mycon.Close();
        }

        private void remplirListRecherche()
        {
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");

            mycon.Open();

            string sql = "SELECT DISTINCT Sexe FROM Membres";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();


            while (myrder.Read() == true)
            {

                ListItem element = new ListItem();
                element.Text = myrder["Sexe"].ToString();
                cboListChercherSexe.Items.Add(element);

            }
            myrder.Close();
            mycon.Close();

        }

        protected void btnMessage_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessagesFriendbook.aspx");
        }

        protected void btnChercher_Click(object sender, EventArgs e)
        {

            string sexe = cboListChercherSexe.SelectedItem.Text;
            string categorieAge = cboListChercherAge.SelectedItem.Text;
            string groupeEthnique = cboListChercherGrpEth.SelectedItem.Text;
            string raison = cboListChercherRaison.SelectedItem.Text;


            Response.Redirect("chercherResultat.aspx?sexe=" + sexe + "&categorieAge=" + categorieAge + "&groupeEthnique=" + groupeEthnique + "&raison=" + raison);



        }
    }
}
