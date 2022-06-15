<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminhakkimizda.aspx.cs" Inherits="agtabanli.adminhakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/adminhakkimizda.css" rel="stylesheet" />
<style type="text/css">
    .auto-style12 {
        height: 26px;
    }
    .auto-style13 {
        text-align: left;
    }
</style>
    <link href="css/btn.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>

            <table class="auto-style2">
                 <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label33" runat="server" Text="1. paragraf"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label34" runat="server" Text="2. paragraf"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1" Height="200px" TextMode="MultiLine" Width="90%"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox1" Height="200px" TextMode="MultiLine" Width="90%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label31" runat="server" Text="Fotoğraf"></asp:Label><br />
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox1" />
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Güncelle" CssClass="but1" />
                    </td>
                </tr>
                
               
                <tr>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style12"></td>
                </tr>
            </table>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table style="width:780px;" class="auto-style2">
                        <tr>
                            <td>
                                <asp:Label ID="Label35" runat="server" Text='<%# Eval("hakkimizda1") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Image ID="Image3" runat="server" Height="270px" ImageUrl='<%# Eval("image1") %>' Width="480px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label36" runat="server" Text='<%# Eval("hakkimizda2") %>'></asp:Label>
                            </td>
                        </tr>
                        
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
