<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acceuilFriendbook.aspx.cs" Inherits="prjWebCsAdoFriendbook.acceuilFriendbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
      
html, body {
   font-family: Arial, sans-serif;
 margin: 0;
 padding: 0;
 background: #f4f4f9;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    background: #f4f4f9;
}

.acceuil-container {
    display: flex;
  align-items: stretch;
  justify-content: center;
  min-height: 100vh;
  padding: 20px;
  gap: 0px;
}

.image-section {
    flex: 1;
    background: #222;
    display: flex;
    justify-content: center;
    align-items: center;
}
.image-section img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.form-section {
    flex: 1;
    padding: 40px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    background: #fff;
    position: relative;
}

.logo {
    position: absolute;
    top: 20px;
    right: 20px;
    font-size: 1.5rem;
    font-weight: bold;
    color: #ff0000;
    font-family: 'Courier New', Courier, monospace;
    text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.3);
    top: 40px;
}

h1 {
    font-size: 2rem;
    margin-top: 70px;
    margin-bottom: 20px;
    color: #333;
    text-align: center;
    font-style: italic;
}
.label-text {
    margin-bottom: 20px;
    font-size: 1.1rem;
    color: #555;
    text-align: center;
}
       
.button {
    width: 100%;
    padding: 12px;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    border-radius: 6px;
    text-align: center;
    transition: all 0.3s ease-in-out;
    background-color: #ff0000;
    color: #ffffff;
    border: none;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
    margin-bottom: 20px;
}

.button:hover {
    background-color: #d00000;
    transform: scale(1.1);
}

footer {
    margin-top: 20px;
    text-align: center;
    font-size: 0.9rem;
    color: #888;
}
.dropdown {
    width: 100%;
    padding: 12px;
    font-size: 1rem;
    color: #333;
    background-color: #f9f9f9;
    border: 1px solid #ccc;
    border-radius: 6px;
    margin-bottom: 20px;
    box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease-in-out;
}

.dropdown:hover {
    border-color: #888;
    background-color: #f1f1f1;
}

.dropdown:focus {
    outline: none;
    border-color: #ff0000;
    box-shadow: 0 0 8px rgba(255, 0, 0, 0.5);
}


    </style>

</head>
<body>
     <form id="form1" runat="server">
        <div class="acceuil-container">
            <div class="image-section">
                <img src="/images/photoAcceuil.jpg" alt="Photo" />
            </div>
            <div class="form-section">
               <div class="logo">❤️Friend Book❤️</div>
                <h1>Accueil</h1>
              

                  <asp:Label CssClass="label-text" ID="lbtBienvenu" runat="server" ></asp:Label>
                    
               
                   Sexe : <br /> <asp:DropDownList ID="cboListChercherSexe" runat="server" CssClass="dropdown"></asp:DropDownList>
                   Catégorie d’âges : <br /> <asp:DropDownList ID="cboListChercherAge" runat="server" CssClass="dropdown"></asp:DropDownList>
                   Groupe ethnique : <br /> <asp:DropDownList ID="cboListChercherGrpEth" runat="server" CssClass="dropdown" ></asp:DropDownList>
                   Raison : <br /> <asp:DropDownList ID="cboListChercherRaison" runat="server" CssClass="dropdown"> </asp:DropDownList>
                <br />
                 <br />
                <asp:Button ID="btnChercher" runat="server" Text="Recherche" CssClass="button" OnClick="btnChercher_Click" />
                <asp:Button ID="btnMessage" runat="server" Text="Messages" CssClass="button" OnClick="btnMessage_Click" />
                <footer>
                    <p>© 2024 FriendBook. Tous droits réservés.</p>
                </footer>
            </div>
        </div>
    </form>
</body>
</html>
