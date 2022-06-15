<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminKampanya.aspx.cs" Inherits="agtabanli.adminKampanya" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/adminfirsat.css" rel="stylesheet" />
    <style type="text/css">
    .auto-style10 {
        height: 33px;
    }
        .auto-style11 {
            height: 143px;
        }
        .auto-style12 {
            height: 30px;
        }
        .auto-style13 {
            height: 27px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: auto; margin: auto; overflow-x:auto;">
        <div>
            <asp:GridView ID="GridView1" runat="server" Width="780px" AutoGenerateColumns="False" DataKeyNames="kampanyaID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField HtmlEncode="false" DataField="kampanyaID" HeaderText="Kampanya ID" InsertVisible="False" ReadOnly="True" SortExpression="kampanyaID" />
                    <asp:BoundField HtmlEncode="false" DataField="marka" HeaderText="Marka" SortExpression="marka" />
                    <asp:BoundField HtmlEncode="false" DataField="seri" HeaderText="Seri" SortExpression="seri" />
                    <asp:BoundField HtmlEncode="false" DataField="model" HeaderText="Model" SortExpression="model" />
                    <asp:BoundField HtmlEncode="false" DataField="yil" HeaderText="Yıl" SortExpression="yil" />
                    <asp:BoundField HtmlEncode="false" DataField="km" HeaderText="Km" SortExpression="km" />
                    <asp:BoundField HtmlEncode="false" DataField="renk" HeaderText="Renk" SortExpression="renk" />
                    <asp:BoundField HtmlEncode="false" DataField="fiyat" HeaderText="Fiyat" SortExpression="fiyat" />
                    <asp:BoundField HtmlEncode="false" DataField="kampanyaFiyat" HeaderText="Kampanya Fiyat" SortExpression="kampanyaFiyat" />
                    <asp:BoundField HtmlEncode="false"  DataField="resim" HeaderText="Resim" SortExpression="resim" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:agtabanliConnectionString %>" DeleteCommand="DELETE FROM [tblKampanya] WHERE [kampanyaID] = @original_kampanyaID AND (([marka] = @original_marka) OR ([marka] IS NULL AND @original_marka IS NULL)) AND (([seri] = @original_seri) OR ([seri] IS NULL AND @original_seri IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([yil] = @original_yil) OR ([yil] IS NULL AND @original_yil IS NULL)) AND (([km] = @original_km) OR ([km] IS NULL AND @original_km IS NULL)) AND (([renk] = @original_renk) OR ([renk] IS NULL AND @original_renk IS NULL)) AND (([fiyat] = @original_fiyat) OR ([fiyat] IS NULL AND @original_fiyat IS NULL)) AND (([kampanyaFiyat] = @original_kampanyaFiyat) OR ([kampanyaFiyat] IS NULL AND @original_kampanyaFiyat IS NULL)) AND (([resim] = @original_resim) OR ([resim] IS NULL AND @original_resim IS NULL))" InsertCommand="INSERT INTO [tblKampanya] ([marka], [seri], [model], [yil], [km], [renk], [fiyat], [kampanyaFiyat], [resim]) VALUES (@marka, @seri, @model, @yil, @km, @renk, @fiyat, @kampanyaFiyat, @resim)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblKampanya]" UpdateCommand="UPDATE [tblKampanya] SET [marka] = @marka, [seri] = @seri, [model] = @model, [yil] = @yil, [km] = @km, [renk] = @renk, [fiyat] = @fiyat, [kampanyaFiyat] = @kampanyaFiyat, [resim] = @resim WHERE [kampanyaID] = @original_kampanyaID AND (([marka] = @original_marka) OR ([marka] IS NULL AND @original_marka IS NULL)) AND (([seri] = @original_seri) OR ([seri] IS NULL AND @original_seri IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([yil] = @original_yil) OR ([yil] IS NULL AND @original_yil IS NULL)) AND (([km] = @original_km) OR ([km] IS NULL AND @original_km IS NULL)) AND (([renk] = @original_renk) OR ([renk] IS NULL AND @original_renk IS NULL)) AND (([fiyat] = @original_fiyat) OR ([fiyat] IS NULL AND @original_fiyat IS NULL)) AND (([kampanyaFiyat] = @original_kampanyaFiyat) OR ([kampanyaFiyat] IS NULL AND @original_kampanyaFiyat IS NULL)) AND (([resim] = @original_resim) OR ([resim] IS NULL AND @original_resim IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_kampanyaID" Type="Int32" />
                    <asp:Parameter Name="original_marka" Type="String" />
                    <asp:Parameter Name="original_seri" Type="String" />
                    <asp:Parameter Name="original_model" Type="String" />
                    <asp:Parameter Name="original_yil" Type="Int32" />
                    <asp:Parameter Name="original_km" Type="Int32" />
                    <asp:Parameter Name="original_renk" Type="String" />
                    <asp:Parameter Name="original_fiyat" Type="Int32" />
                    <asp:Parameter Name="original_kampanyaFiyat" Type="Int32" />
                    <asp:Parameter Name="original_resim" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="marka" Type="String" />
                    <asp:Parameter Name="seri" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="yil" Type="Int32" />
                    <asp:Parameter Name="km" Type="Int32" />
                    <asp:Parameter Name="renk" Type="String" />
                    <asp:Parameter Name="fiyat" Type="Int32" />
                    <asp:Parameter Name="kampanyaFiyat" Type="Int32" />
                    <asp:Parameter Name="resim" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="marka" Type="String" />
                    <asp:Parameter Name="seri" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="yil" Type="Int32" />
                    <asp:Parameter Name="km" Type="Int32" />
                    <asp:Parameter Name="renk" Type="String" />
                    <asp:Parameter Name="fiyat" Type="Int32" />
                    <asp:Parameter Name="kampanyaFiyat" Type="Int32" />
                    <asp:Parameter Name="resim" Type="String" />
                    <asp:Parameter Name="original_kampanyaID" Type="Int32" />
                    <asp:Parameter Name="original_marka" Type="String" />
                    <asp:Parameter Name="original_seri" Type="String" />
                    <asp:Parameter Name="original_model" Type="String" />
                    <asp:Parameter Name="original_yil" Type="Int32" />
                    <asp:Parameter Name="original_km" Type="Int32" />
                    <asp:Parameter Name="original_renk" Type="String" />
                    <asp:Parameter Name="original_fiyat" Type="Int32" />
                    <asp:Parameter Name="original_kampanyaFiyat" Type="Int32" />
                    <asp:Parameter Name="original_resim" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <table style="width: 780px;">
                <tr>
                    <td class="auto-style10" colspan="4">

                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Ekle" OnClick="Button2_Click" CssClass="but1" />


                
                        <asp:Button ID="Button3" runat="server" Text="Güncelle" CssClass="but1" OnClick="Button3_Click" />
                  
                        <asp:Button ID="Button1" runat="server" Text="Sil" OnClick="Button1_Click" CssClass="but1" />
                    
                        <br />
                    </td>

                </tr>
                <tr>
                    <td colspan="2" class="auto-style13">

                        <asp:Label ID="Label32" runat="server" Text="Kampanya ID : "></asp:Label>

                        <asp:Label ID="Label33" runat="server" Text="ID"></asp:Label>

                        <br />
                        <br />

                        <br />

                        <asp:Label ID="Label36" runat="server" Text="Resim Adı :  "></asp:Label>

                        <asp:Label ID="Label25" runat="server"></asp:Label>

                    </td>
                    <td class="auto-style11">

                        <br />
                        <br />

                        <br />

                        <br />

                    </td>
                    <td rowspan="2">

                        <asp:Image ID="Image1" runat="server" Height="117px" Width="208px" />

                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:Label ID="Label37" runat="server" Text="Resim: "></asp:Label>
                    </td>
                    <td>
 <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox1" />
                    </td>
                    <td>

                        &nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style12">

                        <asp:Label ID="Label26" runat="server" Text="Marka"></asp:Label>

                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12">

                        <asp:Label ID="Label27" runat="server" Text="Seri"></asp:Label>

                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>

                        <asp:Label ID="Label28" runat="server" Text="Model"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" CssClass="textbox1"></asp:TextBox>
                    </td>
                    <td>

                        <asp:Label ID="Label29" runat="server" Text="Yıl"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" CssClass="textbox1"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>

                        <asp:Label ID="Label30" runat="server" Text="KM"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" CssClass="textbox1"></asp:TextBox>
                    </td>
                    <td>

                        <asp:Label ID="Label31" runat="server" Text="Renk"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" CssClass="textbox1"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>

                        <asp:Label ID="Label34" runat="server" Text="Fiyat"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td>

                        <asp:Label ID="Label35" runat="server" Text="Kampanya Fiyatı"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>

                </tr>
                
            </table>
            <div  style="width: auto; margin: auto; overflow-x: auto;"">
           <br />
                <asp:GridView ID="GridView2" runat="server" Width="780px" AutoGenerateColumns="False" DataKeyNames="arabaID" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" PageSize="4" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField HtmlEncode="false" DataField="arabaID" HeaderText="Araba ID" InsertVisible="False" ReadOnly="True" SortExpression="arabaID" />
                    <asp:BoundField HtmlEncode="false"  DataField="resim" HeaderText="Resim" SortExpression="resim" />
                    <asp:BoundField HtmlEncode="false"  DataField="seri" HeaderText="Seri" SortExpression="seri" />
                    <asp:BoundField HtmlEncode="false"  DataField="model" HeaderText="Model" SortExpression="model" />
                    <asp:BoundField HtmlEncode="false"  DataField="yil" HeaderText="Yıl" SortExpression="yil" />
                    <asp:BoundField HtmlEncode="false"  DataField="yakit" HeaderText="Yakıt" SortExpression="yakit" />
                    <asp:BoundField HtmlEncode="false"  DataField="vites" HeaderText="Vites" SortExpression="vites" />
                    <asp:BoundField HtmlEncode="false"  DataField="km" HeaderText="KM" SortExpression="km" />
                    <asp:BoundField HtmlEncode="false"  DataField="kasaTipi" HeaderText="Kasa Tipi" SortExpression="kasaTipi" />
                    <asp:BoundField HtmlEncode="false"  DataField="motorGucu" HeaderText="Motor Gücü" SortExpression="motorGucu" />
                    <asp:BoundField HtmlEncode="false"  DataField="motorHacmi" HeaderText="motorHacmi" SortExpression="motorHacmi" />
                    <asp:BoundField HtmlEncode="false"  DataField="cekis" HeaderText="Çekiş" SortExpression="cekis" />
                    <asp:BoundField HtmlEncode="false"  DataField="renk" HeaderText="Renk" SortExpression="renk" />
                    <asp:BoundField HtmlEncode="false"  DataField="plaka" HeaderText="Plaka" SortExpression="plaka" />
                    <asp:BoundField HtmlEncode="false"  DataField="durumu" HeaderText="Durumu" SortExpression="durumu" />
                    <asp:BoundField HtmlEncode="false"  DataField="fiyat" HeaderText="Fiyat" SortExpression="fiyat" />
                    <asp:BoundField HtmlEncode="false"  DataField="markaID" HeaderText="Marka ID" SortExpression="markaID" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:agtabanliConnectionString %>" DeleteCommand="DELETE FROM [tblAraba] WHERE [arabaID] = @original_arabaID AND (([resim] = @original_resim) OR ([resim] IS NULL AND @original_resim IS NULL)) AND (([seri] = @original_seri) OR ([seri] IS NULL AND @original_seri IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([yil] = @original_yil) OR ([yil] IS NULL AND @original_yil IS NULL)) AND (([yakit] = @original_yakit) OR ([yakit] IS NULL AND @original_yakit IS NULL)) AND (([vites] = @original_vites) OR ([vites] IS NULL AND @original_vites IS NULL)) AND (([km] = @original_km) OR ([km] IS NULL AND @original_km IS NULL)) AND (([kasaTipi] = @original_kasaTipi) OR ([kasaTipi] IS NULL AND @original_kasaTipi IS NULL)) AND (([motorGucu] = @original_motorGucu) OR ([motorGucu] IS NULL AND @original_motorGucu IS NULL)) AND (([motorHacmi] = @original_motorHacmi) OR ([motorHacmi] IS NULL AND @original_motorHacmi IS NULL)) AND (([cekis] = @original_cekis) OR ([cekis] IS NULL AND @original_cekis IS NULL)) AND (([renk] = @original_renk) OR ([renk] IS NULL AND @original_renk IS NULL)) AND (([plaka] = @original_plaka) OR ([plaka] IS NULL AND @original_plaka IS NULL)) AND (([durumu] = @original_durumu) OR ([durumu] IS NULL AND @original_durumu IS NULL)) AND (([fiyat] = @original_fiyat) OR ([fiyat] IS NULL AND @original_fiyat IS NULL)) AND (([markaID] = @original_markaID) OR ([markaID] IS NULL AND @original_markaID IS NULL))" InsertCommand="INSERT INTO [tblAraba] ([resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (@resim, @seri, @model, @yil, @yakit, @vites, @km, @kasaTipi, @motorGucu, @motorHacmi, @cekis, @renk, @plaka, @durumu, @fiyat, @markaID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblAraba]" UpdateCommand="UPDATE [tblAraba] SET [resim] = @resim, [seri] = @seri, [model] = @model, [yil] = @yil, [yakit] = @yakit, [vites] = @vites, [km] = @km, [kasaTipi] = @kasaTipi, [motorGucu] = @motorGucu, [motorHacmi] = @motorHacmi, [cekis] = @cekis, [renk] = @renk, [plaka] = @plaka, [durumu] = @durumu, [fiyat] = @fiyat, [markaID] = @markaID WHERE [arabaID] = @original_arabaID AND (([resim] = @original_resim) OR ([resim] IS NULL AND @original_resim IS NULL)) AND (([seri] = @original_seri) OR ([seri] IS NULL AND @original_seri IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([yil] = @original_yil) OR ([yil] IS NULL AND @original_yil IS NULL)) AND (([yakit] = @original_yakit) OR ([yakit] IS NULL AND @original_yakit IS NULL)) AND (([vites] = @original_vites) OR ([vites] IS NULL AND @original_vites IS NULL)) AND (([km] = @original_km) OR ([km] IS NULL AND @original_km IS NULL)) AND (([kasaTipi] = @original_kasaTipi) OR ([kasaTipi] IS NULL AND @original_kasaTipi IS NULL)) AND (([motorGucu] = @original_motorGucu) OR ([motorGucu] IS NULL AND @original_motorGucu IS NULL)) AND (([motorHacmi] = @original_motorHacmi) OR ([motorHacmi] IS NULL AND @original_motorHacmi IS NULL)) AND (([cekis] = @original_cekis) OR ([cekis] IS NULL AND @original_cekis IS NULL)) AND (([renk] = @original_renk) OR ([renk] IS NULL AND @original_renk IS NULL)) AND (([plaka] = @original_plaka) OR ([plaka] IS NULL AND @original_plaka IS NULL)) AND (([durumu] = @original_durumu) OR ([durumu] IS NULL AND @original_durumu IS NULL)) AND (([fiyat] = @original_fiyat) OR ([fiyat] IS NULL AND @original_fiyat IS NULL)) AND (([markaID] = @original_markaID) OR ([markaID] IS NULL AND @original_markaID IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_arabaID" Type="Int32" />
                    <asp:Parameter Name="original_resim" Type="String" />
                    <asp:Parameter Name="original_seri" Type="String" />
                    <asp:Parameter Name="original_model" Type="String" />
                    <asp:Parameter Name="original_yil" Type="Int32" />
                    <asp:Parameter Name="original_yakit" Type="String" />
                    <asp:Parameter Name="original_vites" Type="String" />
                    <asp:Parameter Name="original_km" Type="String" />
                    <asp:Parameter Name="original_kasaTipi" Type="String" />
                    <asp:Parameter Name="original_motorGucu" Type="String" />
                    <asp:Parameter Name="original_motorHacmi" Type="String" />
                    <asp:Parameter Name="original_cekis" Type="String" />
                    <asp:Parameter Name="original_renk" Type="String" />
                    <asp:Parameter Name="original_plaka" Type="String" />
                    <asp:Parameter Name="original_durumu" Type="String" />
                    <asp:Parameter Name="original_fiyat" Type="Int32" />
                    <asp:Parameter Name="original_markaID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="resim" Type="String" />
                    <asp:Parameter Name="seri" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="yil" Type="Int32" />
                    <asp:Parameter Name="yakit" Type="String" />
                    <asp:Parameter Name="vites" Type="String" />
                    <asp:Parameter Name="km" Type="String" />
                    <asp:Parameter Name="kasaTipi" Type="String" />
                    <asp:Parameter Name="motorGucu" Type="String" />
                    <asp:Parameter Name="motorHacmi" Type="String" />
                    <asp:Parameter Name="cekis" Type="String" />
                    <asp:Parameter Name="renk" Type="String" />
                    <asp:Parameter Name="plaka" Type="String" />
                    <asp:Parameter Name="durumu" Type="String" />
                    <asp:Parameter Name="fiyat" Type="Int32" />
                    <asp:Parameter Name="markaID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="resim" Type="String" />
                    <asp:Parameter Name="seri" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="yil" Type="Int32" />
                    <asp:Parameter Name="yakit" Type="String" />
                    <asp:Parameter Name="vites" Type="String" />
                    <asp:Parameter Name="km" Type="String" />
                    <asp:Parameter Name="kasaTipi" Type="String" />
                    <asp:Parameter Name="motorGucu" Type="String" />
                    <asp:Parameter Name="motorHacmi" Type="String" />
                    <asp:Parameter Name="cekis" Type="String" />
                    <asp:Parameter Name="renk" Type="String" />
                    <asp:Parameter Name="plaka" Type="String" />
                    <asp:Parameter Name="durumu" Type="String" />
                    <asp:Parameter Name="fiyat" Type="Int32" />
                    <asp:Parameter Name="markaID" Type="Int32" />
                    <asp:Parameter Name="original_arabaID" Type="Int32" />
                    <asp:Parameter Name="original_resim" Type="String" />
                    <asp:Parameter Name="original_seri" Type="String" />
                    <asp:Parameter Name="original_model" Type="String" />
                    <asp:Parameter Name="original_yil" Type="Int32" />
                    <asp:Parameter Name="original_yakit" Type="String" />
                    <asp:Parameter Name="original_vites" Type="String" />
                    <asp:Parameter Name="original_km" Type="String" />
                    <asp:Parameter Name="original_kasaTipi" Type="String" />
                    <asp:Parameter Name="original_motorGucu" Type="String" />
                    <asp:Parameter Name="original_motorHacmi" Type="String" />
                    <asp:Parameter Name="original_cekis" Type="String" />
                    <asp:Parameter Name="original_renk" Type="String" />
                    <asp:Parameter Name="original_plaka" Type="String" />
                    <asp:Parameter Name="original_durumu" Type="String" />
                    <asp:Parameter Name="original_fiyat" Type="Int32" />
                    <asp:Parameter Name="original_markaID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource></div>
        </div>
    </div>

</asp:Content>
