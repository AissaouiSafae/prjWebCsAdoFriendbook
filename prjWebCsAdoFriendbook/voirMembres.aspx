<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voirMembres.aspx.cs" Inherits="prjWebCsAdoFriendbook.voirMembres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7f6;
        }

        header {
            background: red;
            color: white;
            padding: 15px 0;
            text-align: center;
            position: relative;
            border-bottom-left-radius: 50px;
            border-bottom-right-radius: 50px;
        }

        .presentation {
            font-family: Arial, sans-serif;
            color: #333;
            line-height: 1.6;
            background-color: #f9f9f9;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: fit-content;
            margin: 20px auto;
        }

            .presentation span {
                font-weight: bold;
                color: #2c3e50;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <header>
                Detailles Utilisateur 
    
            </header>
            <div class="presentation">
                <p><span>Le Nom :</span>
                    <asp:Label ID="lblNom" runat="server"></asp:Label></p>
                <p><span>Le Sexe :</span>
                    <asp:Label ID="lblSexe" runat="server"></asp:Label></p>
                <p><span>Le Groupe Ethnique :</span>
                    <asp:Label ID="lblGroupeEthenique" runat="server"></asp:Label></p>
                <p><span>Raison pour rejoindre notre communauté :</span>
                    <asp:Label ID="lblRaison" runat="server"></asp:Label></p>
                <p><span>Date de naissance :</span>
                    <asp:Label ID="lblDateNaissance" runat="server"></asp:Label></p>


            </div>



        </div>
    </form>
</body>
</html>
