<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="agtabanli.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css_kullanici/iletisim.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
    <link href="css_kullanici/textbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table id="tasarim">
            <tr>
                <td id="tbl" class="auto-style1">

                    <asp:Label ID="Label6" runat="server" Text="Ad"></asp:Label>

                    &nbsp;Soyad</td>

                <td class="auto-style1">

                    <asp:Label ID="Label9" runat="server" Text="Mesaj"></asp:Label>

                </td>
            </tr>

            <tr>
                <td>

                    <asp:TextBox ID="TextBox1" runat="server" Width="90%" CssClass="textbox"></asp:TextBox>

                </td>

                <td rowspan="5">

                    <asp:TextBox ID="TextBox4" runat="server" Width="370px" Height="150px" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td class="auto-style2">

                    <asp:Label ID="Label7" runat="server" Text="E-mail"></asp:Label>

                </td>

            </tr>

            <tr>
                <td>

                    <asp:TextBox ID="TextBox2" runat="server" Width="90%" CssClass="textbox"></asp:TextBox>

                </td>

            </tr>

            <tr>
                <td class="auto-style1">

                    <asp:Label ID="Label8" runat="server" Text="Konu"></asp:Label>

                </td>


            </tr>

            <tr>
                <td>

                    <asp:TextBox ID="TextBox3" runat="server" Width="90%" CssClass="textbox"></asp:TextBox>

                </td>

            </tr>

            <tr>
                <td colspan="2">

                    <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Gönder" Width="100%" CssClass="but" />
 
                </td>

                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Star Car" CssClass="auto-style3"></asp:Label>
        <div class="mapouter">
            <div class="gmap_canvas">
                <iframe width="780" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=ankara%20%C3%BCniversitesi%20bilgisayar%20m%C3%BChendisli%C4%9Fi&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                <a href="https://www.embedgooglemap.net/blog/divi-discount-code-elegant-themes-coupon/"></a>
                <br>
                <style>
                    .mapouter {
                        position: relative;
                        text-align: right;
                        height: 500px;
                        width: 780px;
                    }
                </style>
                <a href="https://www.embedgooglemap.net">embedgooglemap.net</a><style>
                                                                                   .gmap_canvas {
                                                                                       overflow: hidden;
                                                                                       background: none !important;
                                                                                       height: 500px;
                                                                                       width: 780px;
                                                                                   }
                                                                                   .auto-style2 {
                                                                                       text-align: center;
                                                                                   }
                                                                                   .auto-style3 {
                                                                                       font-size: xx-large;
                                                                                   }
                                                                               </style></div>
        </div>
        
    </div>


</asp:Content>
