<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="araba.aspx.cs" Inherits="agtabanli.araba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css_kullanici/araba.css" rel="stylesheet" />

    <link href="css_kullanici/yorumlar.css" rel="stylesheet" />

    <link href="css/btn.css" rel="stylesheet" />



    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }

        .auto-style3 {
            font-size: xx-small;
        }
        .auto-style4 {
            color: black;
        }
    </style>







</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("marka") %>'></asp:Label>
                &nbsp;<asp:Label ID="Label17" runat="server" Text='<%# Eval("seri") %>'></asp:Label>
                &nbsp;<asp:Label ID="Label18" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                &nbsp;
              


                    <div>
                        <table id="table1">
                            <tr>
                                <td rowspan="15" class="auto-style2">
                                    <asp:Image ID="Image1" runat="server" Height="225px" Width="400px" Style="border-radius: 15px" ImageUrl='<%# Eval("resim") %>' />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text=" Seri"></asp:Label>
                                    <asp:Label ID="Label19" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label31" runat="server" Text='<%# Eval("seri") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text=" Model"></asp:Label>

                                    <asp:Label ID="Label20" runat="server" Text=": "></asp:Label>

                                </td>
                                <td>

                                    <asp:Label ID="Label32" runat="server" Text='<%# Eval("model") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text=" Yıl"></asp:Label>

                                    <asp:Label ID="Label21" runat="server" Text=": "></asp:Label>

                                </td>
                                <td>

                                    <asp:Label ID="Label33" runat="server" Text='<%# Eval("yil") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text=" Yakıt"></asp:Label>

                                    <asp:Label ID="Label22" runat="server" Text=": "></asp:Label>

                                </td>
                                <td>

                                    <asp:Label ID="Label34" runat="server" Text='<%# Eval("yakit") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text=" Vites"></asp:Label>
                                    <asp:Label ID="Label23" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label35" runat="server" Text='<%# Eval("vites") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text=" Km"></asp:Label>
                                    <asp:Label ID="Label24" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label36" runat="server" Text='<%# Eval("km") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text=" Kasa Tipi"></asp:Label>
                                    <asp:Label ID="Label25" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label37" runat="server" Text='<%# Eval("kasaTipi") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text=" Motor Gücü"></asp:Label>
                                    <asp:Label ID="Label26" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label39" runat="server" Text='<%# Eval("motorGucu") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Text=" Motor Hacmi"></asp:Label>
                                    <asp:Label ID="Label27" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label40" runat="server" Text='<%# Eval("motorHacmi") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text=" Çekiş"></asp:Label>
                                    <asp:Label ID="Label28" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label41" runat="server" Text='<%# Eval("cekis") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text=" Renk"></asp:Label>
                                    <asp:Label ID="Label29" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label42" runat="server" Text='<%# Eval("renk") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text=" Plaka"></asp:Label>
                                    <asp:Label ID="Label30" runat="server" Text=": "></asp:Label>
                                </td>
                                <td>

                                    <asp:Label ID="Label43" runat="server" Text='<%# Eval("plaka") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label48" runat="server" Text=" Durumu"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label50" runat="server" Text='<%# Eval("durumu") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label49" runat="server" Text=" Fiyat"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label51" runat="server" Text='<%# Eval("fiyat") %>'></asp:Label>
                                    <asp:Label ID="Label52" runat="server" Text=" TL"></asp:Label>
                                </td>
                            </tr>
                        </table>

                    </div>
            </ItemTemplate>
        </asp:DataList>






        <div>
            <asp:Table ID="Table3" runat="server">
                <asp:TableRow>

                    <asp:TableCell>
                        <asp:Label ID="Label38" runat="server" Text="Adınız: "></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label47" runat="server" Text="Yorumunuz: "></asp:Label></asp:TableCell>
                    <asp:TableCell RowSpan="2">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox1" TextMode="MultiLine" Height="100px"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label45" runat="server" Text="Soyadınız: "></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox1"></asp:TextBox></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <table>
                <tr>
                    <td style="width: 780px;">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" CssClass="but1" Width="100%" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div id="modelid" style="width:780px; height:330px;">
            <asp:DataList ID="DataList3" runat="server" Width="750px" Height="330px">
                <ItemTemplate>
                    <table id="table2" style="width:750px;">
                        <tr>
                            <td>
                                <strong>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval ("yorumAd") %>'></asp:Label>
                                </strong>
                                <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
                                &nbsp;<strong><asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumSoyad") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td id="icerik">

                                <asp:Label ID="Label44" runat="server" Text='<%# Eval("icerik") %>' CssClass="auto-style4"></asp:Label>

                            </td>

                        </tr>
                        <tr>
                            <td>

                                <asp:Label ID="Label46" runat="server" Text='<%# Eval("yorumTarih") %>' CssClass="auto-style3"></asp:Label>

                            </td>
                        </tr>

                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </div>

</asp:Content>
