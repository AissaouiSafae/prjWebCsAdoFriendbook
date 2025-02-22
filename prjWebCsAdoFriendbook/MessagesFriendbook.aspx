<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessagesFriendbook.aspx.cs" Inherits="prjWebCsAdoFriendbook.MessagesAdoFriendbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
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

            header h1 {
                font-size: 36px;
                margin: 0;
                font-weight: bold;
                letter-spacing: 2px;
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
            top: 50px
        }


        form {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .message {
            font-size: 1.2em;
            font-weight: bold;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

            table th, table td {
                border: 1px solid #ddd;
                padding: 10px;
                text-align: center;
            }

            table th {
                background-color: #f8f8f8;
                font-weight: bold;
            }

            table tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            table tr:hover {
                background-color: #f1f1f1;
            }

            table tr.new-message {
                background-color: #ddd;
            }

        button, .asp-button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px 5px 0;
            font-size: 1em;
            font-weight: bold;
            color: white;
            background-color: #ff0000;
            color: #ffffff;
            border: none;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

            button:hover, .asp-button:hover {
                background-color: #d00000;
                transform: scale(1.1);
            }

        .link-noir {
            color: black;
            text-decoration: none;
        }

            .link-noir:hover {
                color: black;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                Boîte de Réception
           
         
            </header>
            <br />


            <br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="true" Font-Size="Large" CssClass="message"></asp:Label>
            <br />

            <asp:Table ID="tabMessages" runat="server" GridLines="Both" Font-Bold="true" CellPadding="10" CellSpacing="0"></asp:Table>

            <br />
            <asp:Button ID="btnNouveau" Font-Bold="true" CssClass="asp-button" runat="server" Text="Nouveau Message" OnClick="btnNouveau_Click" />
            <asp:Button ID="btnRetour" Font-Bold="true" CssClass="asp-button" runat="server" Text="Retour" OnClick="btnRetour_Click" />
        </div>
    </form>
</body>
</html>
