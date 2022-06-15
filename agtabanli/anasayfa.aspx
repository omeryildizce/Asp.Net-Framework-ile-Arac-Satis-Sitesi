<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="agtabanli.anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css_kullanici/anasayfa.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            height: 34px;
            width: 150px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="anasayfaid1">
        <div id="anasayfasablonid1">
            <table id="anasayfatbl1">
                <tr>
                    <td id="resimid" class="auto-style2">
                        <asp:Label ID="Label16" runat="server" Text="Resim"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label17" runat="server" Text="Marka"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label18" runat="server" Text="Seri"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label20" runat="server" Text="Yıl"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label21" runat="server" Text="Km"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label22" runat="server" Text="Fiyat"></asp:Label>
                    </td>

                </tr>
            </table>
        </div>
    </div>
    <div id="tsrm">
        <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
            <ItemTemplate>
                <div id="anasayfaid">
                    <div id="anasayfasablonid">
                        <table id="anasayfatasarimid">
                            <tr id="trid">
                                <td>
                                    <a href="araba.aspx?arabaID=<%# Eval("arabaID") %>">
                                        <asp:Image ID="Image2" runat="server" Width="128px" Height="72px" Style="border-radius:10px;" ImageUrl='<%# Eval("resim") %>' />
                                    </a>
                                </td>
                                <td>
                                    <a href="araba.aspx?arabaID=<%# Eval("arabaID") %>">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("marka") %>'></asp:Label>
                             </a> 
                                        </td>
                                <td>

                                    <a href="araba.aspx?arabaID=<%# Eval("arabaID") %>">
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("seri") %>'></asp:Label></a>
                                </td>
                                <td>
                                    <a href="araba.aspx?arabaID=<%# Eval("arabaID") %>">
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("yil") %>'></asp:Label>
                                    </a>
                                </td>
                                <td>
                                    <a href="araba.aspx?arabaID=<%# Eval("arabaID") %>">
                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("km") %>'></asp:Label>
                                    </a>
                                </td>
                                <td>
                                    <a href="araba.aspx?arabaID=<%# Eval("arabaID") %>">
                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("fiyat") %>'></asp:Label>
                                    </a>
                                </td>


                            </tr>


                        </table>
                    </div>
                </div>

            </ItemTemplate>
        </asp:DataList>

    </div>
</asp:Content>
