<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexFriendbook.aspx.cs" Inherits="prjWebCsAdoFriendbook.IndexFriendbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap');

        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'PT Sans', sans-serif;
            background-image: url('/images/R.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .container-full {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            height: 100%;
            padding: 20px;
            box-sizing: border-box;
        }

        h1 {
            font-size: 36px;
            font-weight: 700;
            color: white;
            text-shadow: 2px 2px 10px rgba(255, 255, 255, 0.8);
            margin-bottom: 20px;
        }

        p {
            color: white;
            font-size: 18px;
            line-height: 1.6;
            text-shadow: 1px 1px 8px rgba(255, 255, 255, 0.7);
            margin-bottom: 30px;
            max-width: 600px;
        }

        .signup-login-holder {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .signup-btn,
        .login-btn {
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            padding: 12px 20px;
            border-radius: 6px;
            text-align: center;
            transition: all 0.3s ease-in-out;
            background-color: #ff0000;
            color: #ffffff;
            border: none;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
        }

            .signup-btn:hover,
            .login-btn:hover {
                background-color: #d00000;
                transform: scale(1.1);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-full">
                <h1>DATING FUN</h1>
                <p>
                    Friendbook wants to put the excitement back in dating. We match your interests
            to help you break the ice and give you online dating tips along the way to
            make sure you have the best experience possible. Get started today.
                </p>
                <div class="signup-login-holder">

                    <asp:LinkButton ID="LinkSignUp" runat="server" CssClass="signup-btn" OnClick="LinkSignUp_Click">Sign Up</asp:LinkButton>
                    <asp:LinkButton ID="LinkLogin" CssClass="login-btn" runat="server" OnClick="LinkLogin_Click">Login</asp:LinkButton>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
