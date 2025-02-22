<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscrireFriendbook.aspx.cs" Inherits="prjWebCsAdoFriendbook.inscrireFriendbook" %>

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
            background: #f4f4f9;
        }



        .login-container {
            display: flex;
            align-items: stretch;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
            gap: 0px;
        }

        .image-section {
            flex: 1;
        }

            .image-section img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                border-radius: 10px;
            }

        .form-section {
            flex: 1;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }


        .form-section {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
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
        }

        h1 {
            font-size: 2rem;
            margin-top: 60px;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
            font-style: italic;
        }


        .input-group {
            margin-bottom: 15px;
        }

            .input-group label {
                font-weight: bold;
                display: block;
                margin-bottom: 5px;
                color: #555;
            }

        .input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .birthday-dropdown {
            width: calc(33.3% - 5px);
            padding: 10px;
            margin-right: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            display: inline-block;
        }

        .radio-group {
            display: flex;
            gap: 15px;
        }

        .login-button {
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
            transition: all 0.3s ease-in-out;
            background-color: #ff0000;
            color: #ffffff;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
        }

            .login-button:hover {
                background-color: #d00000;
                transform: scale(1.1);
            }

        .error-label {
            margin-top: 10px;
            font-size: 12px;
        }

        .signup-link a {
            color: #d00000;
            text-decoration: none;
            font-weight: bold;
        }

            .signup-link a:hover {
                text-decoration: underline;
            }

        .signup-link {
            text-align: center;
        }

        .btn-signup {
            color: #ff5252;
            text-decoration: none;
            font-weight: bold;
        }

        .input-group.birthday-group {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .birthday-dropdown {
            width: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="image-section">
                <img src="/images/photoInscrire4.jpg" alt="Photo" />
            </div>
            <div class="form-section">
                <div class="logo">❤️Friend Book❤️</div>
                <h1>Create Your Profile</h1>
                <div class="input-group">
                    <label for="username">User Name</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="ImA">I'm a</label>
                    <asp:DropDownList ID="ListOrientation" CssClass="input" runat="server"></asp:DropDownList>
                </div>

                <div class="input-group">
                    <label for="Birthday birthday-group">Birthday</label>
                    <asp:TextBox ID="txtBirthday" runat="server" CssClass="input" TextMode="Date"></asp:TextBox>
                </div>

                <div class="input-group">
                    <label for="groupeEthnique">Ethnic group</label>
                    <asp:TextBox ID="txtGroupeEthnique" runat="server" CssClass="input"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="raison">Reason Group</label>
                    <div class="radio-group">

                        <asp:RadioButtonList ID="raisonRadioButtonList" RepeatLayout="Flow" runat="server" CssClass="radio-group"></asp:RadioButtonList>
                        <!---
                        <asp:RadioButton ID="radioAmour" runat="server" Text="Amour" GroupName="groupeRaison" />
                        <asp:RadioButton ID="radioAmitie" runat="server" Text="Amitié" GroupName="groupeRaison" />
                        <asp:RadioButton ID="radioInterets" runat="server" Text="Intérêts" GroupName="groupeRaison" />-->

                    </div>
                </div>
                <div class="input-group">
                    <label for="CategorieAges">Age Category</label>
                    <asp:DropDownList ID="listCategorieAges" runat="server" CssClass="input"></asp:DropDownList>
                </div>
                <div class="input-group">
                    <label for="Password">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <asp:TextBox ID="txtPassword2" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Button ID="btnInscrire" runat="server" Text="JOIN NOW" CssClass="login-button" OnClick="btnInscrire_Click" />
                <asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="error-label"></asp:Label>
                <p class="signup-link">
                    Already a member?
                    <asp:LinkButton ID="btnLogIn" runat="server" CssClass="btn-signup" OnClick="btnLogIn_Click">Log In</asp:LinkButton>
                    <asp:LinkButton ID="btnIndex" runat="server" CssClass="btn-signup" OnClick="btnIndex_Click">Or Home</asp:LinkButton>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
