<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kaydol.aspx.cs" Inherits="eVoting.WebForm2" %>

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
     
        <asp:RegularExpressionValidator ID="regexTc" runat="server" ErrorMessage="*TC No Hatalı Girilemez." ForeColor="Red" ValidationExpression="^[1-9][0-9]{9}[^1357]$" ControlToValidate="tcNoK"></asp:RegularExpressionValidator>
<%--        TC Nosı için 11 haneli olmasını ve de 0 ile başlamayıp tek bitmeyeceğini RegularEx.. ile kontrol edip RequiredFi.. ile Boş bırakılamacağını kontrol edeceğiz. --%>
        <asp:RequiredFieldValidator ID="ReqTc" runat="server" ControlToValidate="tcNoK" ErrorMessage="*Boş Bırakılamaz." ForeColor="#993399"></asp:RequiredFieldValidator>
     
        <asp:TextBox ID="tcNoK" runat="server"  placeholder="TC No Giriniz" class = "img-circle" OnTextChanged="tcNoK_TextChanged1"></asp:TextBox>
        <br />
    
        <asp:RegularExpressionValidator ID="regexAd" runat="server" ErrorMessage="*Hatalı Giriş." ForeColor="Red" ValidationExpression="([A-Z][a-z ]+([A-Z][a-z ]*)*$)" ControlToValidate="ad"></asp:RegularExpressionValidator>
<%--  Aynı şekilde isim ve soyisimin tek harfli olmayacağını ve de ilk harfin büyük başlayacağı kontrolunu sağladık --%>
        <asp:RequiredFieldValidator ID="ReqAd" runat="server" ControlToValidate="ad" ErrorMessage="*Boş Bırakılamaz." ForeColor="#993399"></asp:RequiredFieldValidator>
    
        <asp:TextBox ID="ad" runat="server"  placeholder="İsim Giriniz"  OnTextChanged="ad_TextChanged1" class="form-label"></asp:TextBox>
        <br />

       
        <asp:RegularExpressionValidator ID="regexSoyad" runat="server" ErrorMessage="*Hatalı giriş." ForeColor="Red" ValidationExpression="([A-Z][a-z ]+([A-Z][a-z ]*)*$)" ControlToValidate="soyad"></asp:RegularExpressionValidator>

       
        <asp:RequiredFieldValidator ID="ReqSoya" runat="server" ControlToValidate="soyad" ErrorMessage="*Boş Bırakılamaz." ForeColor="#993399"></asp:RequiredFieldValidator>

       
        <asp:TextBox ID="soyad" runat="server"  placeholder="Soyisim  Giriniz" class="form-label"></asp:TextBox>
        <br />
      
       
        <asp:RegularExpressionValidator ID="regexCins" runat="server" ControlToValidate="cinsiyet" ErrorMessage="*Cinsiyetinizi Doğru Giriniz." ForeColor="Red" ValidationExpression="^Erkek$|^Kadın$"></asp:RegularExpressionValidator>
      
       
        <asp:RequiredFieldValidator ID="ReqCins" runat="server" ControlToValidate="cinsiyet" ErrorMessage="*Boş Bırakılamaz." ForeColor="#993399"></asp:RequiredFieldValidator>
      
       
        <asp:TextBox ID="cinsiyet" runat="server"  placeholder="Cinsiyet Giriniz (Erkek | Kadın)" class="form-label" OnTextChanged="cinsiyet_TextChanged"></asp:TextBox>
        <br />
        
        

        <asp:RegularExpressionValidator ID="regexDt" runat="server" ErrorMessage="*Eksik/ Hatalı Tarih Girdiniz." ForeColor="Red" ValidationExpression="^(([0-2]?\d{1})|([3][0,1]{1}))\/([0][0-9]|[1][0-2])\/(([1]{1}[9]{1}[1-9]{1}[0-9]{1})|([2]{1}[0]{1}(([0-2]{1}[0-1]{1})|([0-1]{1}[0-9]{1}))))$" ControlToValidate="dTarih"></asp:RegularExpressionValidator>
        
  <%-- Doğum tarihi olayında 1900- 2020 yılalrı arasında bir tarih girilmesi için gerekli regularExpressionValidation değeriini yazdık --%>      

        <asp:RequiredFieldValidator ID="ReqDt" runat="server" ControlToValidate="dTarih" ErrorMessage="*Boş Bırakılamaz." ForeColor="#993399"></asp:RequiredFieldValidator>
        
        

        <asp:TextBox ID="dTarih" runat="server"  placeholder="Doğum Tarihi Giriniz" class="form-label" OnTextChanged="dTarih_TextChanged"></asp:TextBox>
        <br />

       
       

        <asp:RegularExpressionValidator ID="regexPass" runat="server" ErrorMessage="*Uygun Format Giriniz." ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{8,12}$" ControlToValidate="sifre"></asp:RegularExpressionValidator>

       
 <%--        Şifrede kullanılması gereken Karakterleri ve de uzunluğunun kontrolunu sağladık (En az Bir büyük harf Bir özel sembol ve de En az bir rakam _ 8-12 uzunluk)--%>

        <asp:RequiredFieldValidator ID="Reqpas" runat="server" ControlToValidate="sifre" ErrorMessage="*Boş Bırakılamaz" ForeColor="#990099"></asp:RequiredFieldValidator>

       
       

        <asp:TextBox ID="sifre" runat="server"  placeholder="Şifre Giriniz" class="form-label"></asp:TextBox>
        <br />

        
        // Ve RequiredFi... ile her Textboxlar için  boş bırakılmayacağının kontrolleri sağlandı. 
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
