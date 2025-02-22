<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ecrireMessageFriendbook.aspx.cs" Inherits="prjWebCsAdoFriendbook.ecrireMessageFriendbook" %>

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

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background: white;
            border-radius: 10px;
            overflow: hidden;
        }

        td {
            padding: 10px 15px;
            font-size: 16px;
            color: #333;
        }

            td:first-child {
                font-weight: bold;
                text-align: right;
                width: 30%;
                background-color: #f5f5f5;
            }

            td:last-child {
                text-align: left;
            }

        input, textarea, select {
            width: calc(100% - 20px);
            padding: 8px 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

            input:focus, textarea:focus, select:focus {
                outline: none;
                border-color: red;
                box-shadow: 0 0 8px rgba(255, 0, 0, 0.3);
            }

        .buttond {
            display: flex;
            gap: 10px;
            justify-content: flex-start;
        }

        .buttond {
            padding: 8px 15px;
            font-size: 16px;
            color: white;
            background: red;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

            .buttond:hover {
                background-color: #d00000;
                transform: scale(1.1);
            }

            .buttond:focus {
                outline: none;
                background-color: #a70000;
            }

            .buttond:active {
                background-color: #8c0000;
                transform: scale(0.98);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                Nouveau Message
 
           
            </header>
            <br />



            <table>
                <tr>
                    <td>Destinataire : 
                    </td>
                    <td>
                        <asp:DropDownList ID="cboDestinataires" runat="server"></asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td>Sujet : 
                    </td>
                    <td>
                        <asp:TextBox ID="txtSujet" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td style="vertical-align: top;">Message : 
                    </td>
                    <td style="vertical-align: top;">
                        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" Rows="6"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>


                        <asp:Button ID="btnEnvoyer" OnClick="btnEnvoyer_Click" CssClass="buttond" runat="server" Text="Envoyer" />

                    </td>
                    <td>
                        <asp:Label ID="lbltxtConfirmation" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnEffacer" OnClick="btnEffacer_Click" CssClass="buttond" runat="server" Text="Effacer" />
                        <br />
                        <asp:Button ID="btnRetour" OnClick="btnRetour_Click" CssClass="buttond" runat="server" Text="Retourner" />



                    </td>

                </tr>


            </table>

        </div>
    </form>
</body>
</html>
