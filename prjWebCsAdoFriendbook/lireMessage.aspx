<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lireMessage.aspx.cs" Inherits="prjWebCsAdoFriendbook.lireMessage" %>

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
            font-size: 1.8rem;
            font-weight: bold;
            color: #ff6347;
            font-family: 'Courier New', Courier, monospace;
            text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.3);
        }

        .message-content {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            font-size: 18px;
        }

            .message-content table {
                width: 100%;
                margin-bottom: 20px;
                border-collapse: collapse;
            }

            .message-content td {
                padding: 12px 20px;
                font-size: 18px;
                color: #333;
            }

                .message-content td:first-child {
                    font-weight: bold;
                    text-align: right;
                    background-color: #f7f7f7;
                }

                .message-content td:nth-child(2) {
                    background-color: #f9f9f9;
                }

        .buttonRt {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 30px;
        }

        .buttonRt {
            padding: 12px 25px;
            font-size: 16px;
            color: white;
            background-color: #ff0000;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

            .buttonRt:hover {
                background-color: #d00000;
                transform: scale(1.05);
            }

            .buttonRt:focus {
                outline: none;
            }


        .buttonRt {
            transform: scale(0.98);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                Lecture du Message
           
            </header>
            <div class="message-content">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="true" Font-Size="Large">
                </asp:Label>
                <div class="button-group">
                    <asp:Button ID="btnRetourner" OnClick="btnRetourner_Click" CssClass="buttonRt" runat="server" Text="Retourner" Font-Bold="true" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
