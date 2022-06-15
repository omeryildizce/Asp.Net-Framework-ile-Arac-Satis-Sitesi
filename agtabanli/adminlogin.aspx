    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="agtabanli.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            color: midnightblue;
        }
        .auto-style4 {
            color: midnightblue;
        }
        .auto-style5 {
            height: 27px;
        }
    </style>
    <link href="css/txt.css" rel="stylesheet" />
</head>
<body>
    

  
    <form id="form1" runat="server">
       <div id="genel" >

           <div id= "anasayfaid">

            <div id= "anasayfasablonid" class="auto-style1">

                <asp:Image ID="Image1" runat="server" Height="200px" Width="400px" ImageUrl="~/resimler/lock.png"  />

                <br />
                <br />
                <table class="auto-style2">
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label1" runat="server" Text="Kıllanıcı Adı:" CssClass="auto-style3"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="ara" PlaceHolder="  Lütfen Kullanıcı Adınızı Giriniz..."></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                            <asp:Label ID="Label2" runat="server" Text="Kullanıcı Şifre:" CssClass="auto-style4" ></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox2"  PlaceHolder="  Lütfen Şifrenizi Adınızı Giriniz..."  TextMode="Password" runat="server" CssClass="ara"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="but" OnClick="Button1_Click" />
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />

        </div>
        </div>
       </div>
        
    </form>
         
</body>
</html>
