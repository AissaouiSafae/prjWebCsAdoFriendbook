using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class chercherResultat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                string sexe = Request.QueryString["sexe"];
                string categorieAge = Request.QueryString["categorieAge"];
                string groupeEthnique = Request.QueryString["groupeEthnique"];
                string raison = Request.QueryString["raison"];


                int nbmResultat = 0;

                TableRow maligne = new TableRow();
                TableCell macellure = new TableCell();

                macellure.Text = "Nom ";
                maligne.Cells.Add(macellure);

                macellure = new TableCell();
                macellure.Text = "Catégorie d’âges";
                maligne.Cells.Add(macellure);

                macellure = new TableCell();
                macellure.Text = "Actions";

                maligne.Cells.Add(macellure);

                tabMessages.Rows.Add(maligne);


                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");

                mycon.Open();
                string sql = "SELECT  NumUser , NomUtilisateur, CategorieAge FROM Membres WHERE Sexe = '" + sexe + "' AND CategorieAge= '" + categorieAge + "' AND GroupeEthnique = '" + groupeEthnique + "' AND Raison = '" + raison + "'   ";

                SqlCommand mycmd = new SqlCommand(sql, mycon);
                SqlDataReader myrder = mycmd.ExecuteReader();


                while (myrder.Read() == true)
                {



                    maligne = new TableRow();

                    macellure = new TableCell();
                    macellure.Text = myrder["NomUtilisateur"].ToString();
                    maligne.Cells.Add(macellure);

                    macellure = new TableCell();
                    macellure.Text = myrder["CategorieAge"].ToString();
                    maligne.Cells.Add(macellure);

                    macellure = new TableCell();

                    int refID = Convert.ToInt32(myrder["NumUser"]);

                    macellure.Text = "<a href='voirMembres.aspx?refMembre=" + refID + "'> Detaille </a>";
                    maligne.Cells.Add(macellure);

                    tabMessages.Rows.Add(maligne);
                    nbmResultat++;


                }

                myrder.Close();
                mycon.Close();
                lblMessage.Text += "<br /> " + nbmResultat + "  utilisateur(s) trouvé(s). <br />";





            }
        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect("acceuilFriendbook.aspx");
        }
    }
}