<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="eVoting.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />    
<meta name= "viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no"/>
     <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/"/>
    <title>Elektronik Oy Verme Sistemi</title>

     <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
     <link href="signin.css" rel="stylesheet"/>
</head>

<body class="text-center"> 
   <main class="form-signin">
    <form id="girisSayfasi" runat="server">
        
        <h1 class="h3 mb-3 fw-normal">Elektronik Oy Verme Sistemi</h1>

                  
        
            <div class="form-floating"> 
                       
            <asp:TextBox ID="tcNo" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="TC No Giriniz"></asp:TextBox>
             </div>
       
            <div class="form-floating"> 
           
            <asp:TextBox ID="sifre" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="Şifre Giriniz" TextMode="Password"  ></asp:TextBox>
                </div>
       
        
            <asp:Button ID="girisYap" runat="server" OnClick="Button1_Click" Text="Giriş Yap" />
        
        
            <asp:Button ID="kaydol" runat="server" OnClick="Button1_Click1" Text="Kaydol" />
       
                <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Beni Hatırla 
                </label>
            </div>
    </form>
</main>
    <script> src ="bootstrap.js"</script>
</body>
</html>
