<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="kampanya.aspx.cs" Inherits="agtabanli.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css_kullanici/kampanya.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            color: red;
            text-decoration:line-through;
        }
        .auto-style3 {
            color: lime;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label6" runat="server" Text="Kampanyalı Araçlarımız"></asp:Label>
   <div style=" overflow: auto; height:1000px; width:780px;">
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <div  id="kampanyadivid">
                <div id="tasarimid">

                    <table id="kampanyatableid" style="margin:auto;">
                        <tr>
                            <td >
                             

                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("resim") %>' Height="360px" Width="640px" />
                                                             

                            </td>
                        </tr>
                    </table>
                    <table id="tabledetayid">
                        <tr>
                            <td colspan="3">

                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("marka") %>'></asp:Label>
                                &nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("seri") %>'></asp:Label>
                                &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:Label ID="Label10" runat="server" Text="Yıl: "></asp:Label>

                                &nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("yil") %>'></asp:Label>

                            </td>
                            <td>

                                <asp:Label ID="Label12" runat="server" Text="Km: "></asp:Label>
                                &nbsp;<asp:Label ID="Label13" runat="server" Text='<%# Eval("km") %>'></asp:Label>

                            </td>
                            <td>

                                <asp:Label ID="Label14" runat="server" Text="Renk: "></asp:Label>
                                &nbsp;<asp:Label ID="Label15" runat="server" Text='<%# Eval("renk") %>'></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:Label ID="Label16" runat="server" Text="Fiyat: "></asp:Label>

                            </td>
                            <td>

                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("fiyat") %>' CssClass="auto-style2"></asp:Label>
                            <td />
                            <asp:Label ID="Label20" runat="server" Text=" TL"></asp:Label>



                        </tr>
                        <tr>
                            <td>

                                <asp:Label ID="Label22" runat="server" Text="Kampanyalı Fiyat: "></asp:Label>

                            </td>
                            <td>

                                <strong>
                                <asp:Label ID="Label19" runat="server" CssClass="auto-style3" Text='<%# Eval("kampanyaFiyat") %>'></asp:Label>
                                </strong>
                            <td />

                                <asp:Label ID="Label21" runat="server" Text=' TL'></asp:Label>
                            </table>
                </div>
            </div>

        </ItemTemplate>
    </asp:DataList>
       </div>
</asp:Content>
