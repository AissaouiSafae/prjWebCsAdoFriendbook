<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginFriendbook.aspx.cs" Inherits="prjWebCsAdoFriendbook.loginFriendbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


    <title></title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            font-family: Arial, sans-serif;
        }


        body {
            display: flex;
            justify-content: center;
            align-items: center;
            background: #f4f4f9;
        }


        .login-container {
            display: flex;
            width: 100%;
            max-width: 1000px;
            height: 80vh;
            max-height: 600px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            overflow: hidden;
            background: #fff;
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
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
        }


        .login-button {
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
        }

            .login-button:hover {
                background-color: #d00000;
                transform: scale(1.1);
            }


        .signup-link a {
            color: #d00000;
            text-decoration: none;
            font-weight: bold;
        }

            .signup-link a:hover {
                text-decoration: underline;
            }

        footer {
            margin-top: 20px;
            text-align: center;
            font-size: 0.9rem;
            color: #888;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="image-section">
                <img src="/images/photo3.jpg" alt="Photo " />
            </div>
            <div class="form-section">
                <div class="logo">❤️Friend Book❤️</div>
                <h1>Log in</h1>
                <div class="input-group">
                    <label for="username">User Name</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input" Placeholder="Enter your username"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" Placeholder="Enter your password"></asp:TextBox>
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="Sign in" CssClass="login-button" OnClick="btnLogin_Click" />
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="error-label"></asp:Label>
                <br />
                <p class="signup-link">
                    Don’t have an account?
                    <asp:LinkButton ID="btnSignUp" runat="server" CssClass="btn-signup" OnClick="btnSignUp_Click">Sign up</asp:LinkButton>
                    <asp:LinkButton ID="btnIndex" runat="server" CssClass="btn-signup" OnClick="btnIndex_Click">Or Home</asp:LinkButton>
                </p>

                <footer>
                    <p>© 2024 Your Site. All rights reserved.</p>
                </footer>

            </div>
        </div>
    </form>
</body>

</html>
