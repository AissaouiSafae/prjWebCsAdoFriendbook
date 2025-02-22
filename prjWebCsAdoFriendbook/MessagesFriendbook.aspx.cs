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
    public partial class MessagesAdoFriendbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            int nbmsg = 0;

            lblMessage.Text = "Bienvenue " + Session["Nom"].ToString()+"<br/>";

            TableRow maligne = new TableRow();
            TableCell macellure = new TableCell();

            macellure.Text = "Titres";
            maligne.Cells.Add(macellure);

            macellure = new TableCell();
            macellure.Text = "Envoyeurs";
            maligne.Cells.Add(macellure);

            macellure = new TableCell();
            macellure.Text = "Actions";

            maligne.Cells.Add(macellure);

            tabMessages.Rows.Add(maligne);


            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("~\\App_Data\\DB_Friendbook.mdf");

            mycon.Open();
            string sql = "SELECT Messages.idMessage ,Messages.Titre, Messages.Nouveau, Membres.NomUtilisateur FROM Messages , Membres WHERE Membres.NumUser=Messages.Envoyeur  AND  Messages.Receveur='" + Session["Num"].ToString() + "'";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();

       
           

            while (myrder.Read() == true)
            {



                maligne = new TableRow();
                
                /*
                if (myrder["Nouveau"].ToString() == "true")
                { maligne.BackColor = Color.Red; }*/
                if (Convert.ToBoolean(myrder["Nouveau"]) == true)
                {
                    /*  maligne.BackColor = Color.FromArgb(255, 153, 153); */
                    maligne.BackColor = Color.FromArgb(255, 215, 215); 


                }



                macellure = new TableCell();
                macellure.Text = myrder["Titre"].ToString();
                maligne.Cells.Add(macellure);
                macellure = new TableCell();
                macellure.Text = myrder["NomUtilisateur"].ToString();
                maligne.Cells.Add(macellure);

                macellure = new TableCell();

                int msgID = Convert.ToInt32(myrder["idMessage"]);

                macellure.Text = "<a href='lireMessage.aspx?refMes=" + msgID + "' class='link-noir'>Lire</a>";
                macellure.Text += "&nbsp; &nbsp; &nbsp; <a href='effacerMessage.aspx?refMes=" + msgID + "' class='link-noir'>Effacer</a>";
                maligne.Cells.Add(macellure);

                tabMessages.Rows.Add(maligne);
                nbmsg++;


            }

            myrder.Close();
            mycon.Close();
            lblMessage.Text += "Vous aver " + nbmsg + " message(s). <br /> ";



        }

        protected void btnNouveau_Click(object sender, EventArgs e)
        {
            Response.Redirect("ecrireMessageFriendbook.aspx");
        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect("acceuilFriendbook.aspx");
        }


    }
}