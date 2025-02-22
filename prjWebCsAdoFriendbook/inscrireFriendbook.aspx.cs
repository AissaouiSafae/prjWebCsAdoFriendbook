using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoFriendbook
{
    public partial class inscrireFriendbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false) {

                RemplirlistOrientation();
                RemplirListRaison();
                RemplirCategorieAges();




            }
        }

        private void RemplirlistOrientation()
        {
       
            // j'ai ajouter sexe dans value  
            ListOrientation.Items.Add(new ListItem("Man Interested in Women","Man"));
            ListOrientation.Items.Add(new ListItem("Women Interested in Man", "Women"));

        }
       

        private void RemplirListRaison()
        {
            ListItem ls1 = new ListItem();
            ls1.Text = " Love";
            ls1.Selected = true;
            raisonRadioButtonList.Items.Add(ls1);
            raisonRadioButtonList.Items.Add("Friendship");
            raisonRadioButtonList.Items.Add("Interests");




        }

        private void RemplirCategorieAges()
        {
            listCategorieAges.Items.Add("20-30");
            listCategorieAges.Items.Add("30-40");
            listCategorieAges.Items.Add("40-60");

        }




        protected void btnLogIn_Click(object sender, EventArgs e)
        {
           
           
            Response.Redirect("loginFriendbook.aspx");
        }

        protected void btnInscrire_Click(object sender, EventArgs e)
        {
            string userName = txtUsername.Text.Trim();
            string sexe = ListOrientation.SelectedItem.Value;
            string groupeEthenique = txtGroupeEthnique.Text.Trim();
            string raison = raisonRadioButtonList.SelectedItem.Text;
            string CategorieAge = listCategorieAges.SelectedItem.Text;
            string mdp = txtPassword.Text.Trim();
            string mdp2 = txtPassword2.Text.Trim();


            DateTime dateNaissance = DateTime.Parse(txtBirthday.Text);

     

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");
            mycon.Open();

            string sql = "SELECT NomUtilisateur FROM Membres WHERE  NomUtilisateur ='"+userName + "'";
            SqlCommand mycmd = new SqlCommand(sql,mycon) ;
            SqlDataReader myrder = mycmd.ExecuteReader();

            if (myrder.Read() == true)
            {
                myrder.Close();
                mycon.Close();
                lblError.Text = "Registration failed: You are already a member, Contact admin.";
            }else if (mdp!=mdp2)
            {
                lblError.Text = "Failure: The passwords do not match. Please try again.";
            }

            else
            {
                myrder.Close();
                sql = "INSERT INTO Membres (NomUtilisateur, MotDePasse, Sexe, GroupeEthnique, Raison, CategorieAge, Statut, DateNaissance) " +
                      "VALUES (@NomUtilisateur, @MotDePasse, @Sexe, @GroupeEthnique, @Raison, @CategorieAge, @Statut, @DateNaissance)"; // Ajout du champ DateNaissance
                SqlCommand mycmd2 = new SqlCommand(sql, mycon);
                mycmd2.Parameters.AddWithValue("@NomUtilisateur", userName);
                mycmd2.Parameters.AddWithValue("@MotDePasse", mdp);
                mycmd2.Parameters.AddWithValue("@Sexe", sexe);
                mycmd2.Parameters.AddWithValue("@GroupeEthnique", groupeEthenique);
                mycmd2.Parameters.AddWithValue("@Raison", raison);
                mycmd2.Parameters.AddWithValue("@CategorieAge", CategorieAge);
                mycmd2.Parameters.AddWithValue("@Statut", "actif");
                mycmd2.Parameters.AddWithValue("@DateNaissance", dateNaissance); // Ajout de la date de naissance

                mycmd2.ExecuteNonQuery();
                mycon.Close();
                Response.Redirect("loginFriendbook.aspx");
            }

        }

        protected void btnIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexFriendbook.aspx");
        }
    }
}