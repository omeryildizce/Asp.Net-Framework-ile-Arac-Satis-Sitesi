<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="agtabanli.hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css_kullanici/hakkimizda.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            color: black;
        }
    </style>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label17" runat="server" CssClass="auto-style2" Text="Hakkımızda"></asp:Label>
    </div>
    <div>


        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <table style="width: 780px;">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("hakkimizda1") %>' CssClass="auto-style3"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td  class="auto-style1">
                            <asp:Image  ID="Image3" runat="server" Height="400px" ImageUrl='<%# Eval("image1") %>' Width="780" BorderStyle="Solid" CssClass="ima" />
                        </td>
                    </tr>
                  
                    <tr>

                        <td>
                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("hakkimizda2") %>' CssClass="auto-style3"></asp:Label>
                        </td>
                    </tr>
                     
                </table>
            </ItemTemplate>
        </asp:DataList>


    </div>
</asp:Content>
