﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kaydol.aspx.cs" Inherits="eVoting.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/"/> 
    <link href="bootstrap.css" rel="stylesheet"/>
    <title></title>
</head>
<body>
    
    <form id="form1"  runat="server">
     
         <div class="row">
    <div class="col-md-3">
     
        <asp:TextBox ID="tcNoK" runat="server" class = "img-circle"></asp:TextBox>
        <br />
    
        <asp:TextBox ID="ad" runat="server"  OnTextChanged="ad_TextChanged1" class="form-label"></asp:TextBox>
        <br />

       
        <asp:TextBox ID="soyad" runat="server" class="form-label"></asp:TextBox>
        <br />
      
       
        <asp:TextBox ID="cinsiyet" runat="server"  placeholder="Cinsiyet Giriniz" class="form-label"></asp:TextBox>
        <br />
        
        

        <asp:TextBox ID="dTarih" runat="server"  placeholder="Doğum Tarihi Giriniz" class="form-label"></asp:TextBox>
        <br />

       
       

        <asp:TextBox ID="sifre" runat="server"  placeholder="Şifre Giriniz" class="form-label"></asp:TextBox>
        <br />

        
        <asp:Button ID="kaydet" runat="server" Text="Kaydet"  OnClick="kaydet_Click1" />
   
        </div>
             </div>
        </form>
       
    
</body>

    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    * {
        box-sizing: border-box
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }

    /* Set a style for all buttons */
    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

        button:hover {
            opacity: 1;
        }

    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #f44336;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn, .signupbtn {
        float: left;
        width: 50%;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }
</style>
</html>
