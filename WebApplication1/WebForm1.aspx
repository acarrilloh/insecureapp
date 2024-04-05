<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AppInsegura.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        
        .login-container {
            width: 300px;
            margin: 100px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        
        .login-container .message {
            color: green;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Iniciar sesión App Insegura</h2>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Usuario"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesión" OnClick="btnLogin_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>

</html>