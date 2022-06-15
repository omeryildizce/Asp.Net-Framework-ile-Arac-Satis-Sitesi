<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminAraba.aspx.cs" Inherits="agtabanli.adminAraba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/adminaraba.css" rel="stylesheet" />
    <link href="css/btn.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style10 {
            margin-left: 80px;
        }

        .auto-style11 {
            margin-left: 40px;
        }

        .auto-style12 {
            height: 29px;
        }

        .auto-style13 {
            height: 29px;
            margin-left: 80px;
        }
        .auto-style14 {
            text-align: left;
            height: 27px;
            margin-left: 80px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 780px; height: 1000px;">
        <div>

            <table style="width:780px;">
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Label40" runat="server" Text="Arabalar"></asp:Label>
                    </td>
                               </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label41" runat="server" Text="Resim"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                    <td>
                        <asp:Label ID="Label43" runat="server" Text="ID"></asp:Label>
                      </td>
                    <td>
                        <asp:Label ID="Label42" runat="server"></asp:Label>
                      </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label24" runat="server" Text="Resim"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox" />
                    </td>
                    <td>
                        <asp:Label ID="Label25" runat="server" Text="Seri"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label26" runat="server" Text="Model"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label27" runat="server" Text="Yıl"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label28" runat="server" Text="Yakıt"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label34" runat="server" Text="Vites"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label29" runat="server" Text="Kilometre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label35" runat="server" Text="Kasa Tipi"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label30" runat="server" Text="Motor Gücü"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label36" runat="server" Text="Motor Hacmi"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label31" runat="server" Text="Çekiş"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label37" runat="server" Text="Renk"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label32" runat="server" Text="Plaka"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label38" runat="server" Text="Durum"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label33" runat="server" Text="Fiyat"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox14" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label39" runat="server" Text="Marka"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="textbox1">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="4"> 
                    <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" CssClass="but1" />
                   
                    
                        <asp:Button ID="Button2" runat="server" Text="Güncelle" OnClick="Button2_Click" CssClass="but1" />
                   
                        <asp:Button ID="Button3" runat="server" Text="Sil" OnClick="Button3_Click" CssClass="but1" />
                   
                        </td>
                </tr>
            </table>

        </div>
        <div style="width: auto; height: auto; overflow-x: auto;">
            <br />
            <asp:GridView   ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="arabaID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="6">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField HtmlEncode="False" DataField="arabaID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="arabaID" />
                    <asp:BoundField HtmlEncode="False" DataField="resim" HeaderText="Resim" SortExpression="resim" />

                    <asp:BoundField HtmlEncode="False" DataField="seri" HeaderText="Seri" SortExpression="seri" />
                    <asp:BoundField HtmlEncode="False" DataField="model" HeaderText="Model" SortExpression="model" />
                    <asp:BoundField HtmlEncode="False" DataField="yil" HeaderText="Yil" SortExpression="yil" />
                    <asp:BoundField HtmlEncode="False" DataField="yakit" HeaderText="Yakit" SortExpression="yakit" />
                    <asp:BoundField HtmlEncode="False" DataField="vites" HeaderText="Vites" SortExpression="vites" />
                    <asp:BoundField HtmlEncode="False" DataField="km" HeaderText="KM" SortExpression="km" />
                    <asp:BoundField HtmlEncode="False" DataField="kasaTipi" HeaderText="Kasa Tipi" SortExpression="kasaTipi" />
                    <asp:BoundField HtmlEncode="False" DataField="motorGucu" HeaderText="Motor Gücü" SortExpression="motorGucu" />
                    <asp:BoundField HtmlEncode="False" DataField="motorHacmi" HeaderText="Motor Hacmi" SortExpression="motorHacmi" />
                    <asp:BoundField HtmlEncode="False" DataField="cekis" HeaderText="Çekiş" SortExpression="cekis" />
                    <asp:BoundField HtmlEncode="False" DataField="renk" HeaderText="Renk" SortExpression="renk" />
                    <asp:BoundField HtmlEncode="False" DataField="plaka" HeaderText="Plaka" SortExpression="plaka" />
                    <asp:BoundField HtmlEncode="False"  DataField="durumu" HeaderText="Durumu" SortExpression="durumu" />
                    <asp:BoundField HtmlEncode="False" DataField="fiyat" HeaderText="Fiyat" SortExpression="fiyat" />
                    <asp:BoundField HtmlEncode="False" DataField="markaID" HeaderText="Marka ID" SortExpression="markaID" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:agtabanliConnectionString %>" DeleteCommand="DELETE FROM [tblAraba] WHERE [arabaID] = @original_arabaID AND (([resim] = @original_resim) OR ([resim] IS NULL AND @original_resim IS NULL)) AND (([seri] = @original_seri) OR ([seri] IS NULL AND @original_seri IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([yil] = @original_yil) OR ([yil] IS NULL AND @original_yil IS NULL)) AND (([yakit] = @original_yakit) OR ([yakit] IS NULL AND @original_yakit IS NULL)) AND (([vites] = @original_vites) OR ([vites] IS NULL AND @original_vites IS NULL)) AND (([km] = @original_km) OR ([km] IS NULL AND @original_km IS NULL)) AND (([kasaTipi] = @original_kasaTipi) OR ([kasaTipi] IS NULL AND @original_kasaTipi IS NULL)) AND (([motorGucu] = @original_motorGucu) OR ([motorGucu] IS NULL AND @original_motorGucu IS NULL)) AND (([motorHacmi] = @original_motorHacmi) OR ([motorHacmi] IS NULL AND @original_motorHacmi IS NULL)) AND (([cekis] = @original_cekis) OR ([cekis] IS NULL AND @original_cekis IS NULL)) AND (([renk] = @original_renk) OR ([renk] IS NULL AND @original_renk IS NULL)) AND (([plaka] = @original_plaka) OR ([plaka] IS NULL AND @original_plaka IS NULL)) AND (([durumu] = @original_durumu) OR ([durumu] IS NULL AND @original_durumu IS NULL)) AND (([fiyat] = @original_fiyat) OR ([fiyat] IS NULL AND @original_fiyat IS NULL)) AND (([markaID] = @original_markaID) OR ([markaID] IS NULL AND @original_markaID IS NULL))" InsertCommand="INSERT INTO [tblAraba] ([resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (@resim, @seri, @model, @yil, @yakit, @vites, @km, @kasaTipi, @motorGucu, @motorHacmi, @cekis, @renk, @plaka, @durumu, @fiyat, @markaID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblAraba]" UpdateCommand="UPDATE [tblAraba] SET [resim] = @resim, [seri] = @seri, [model] = @model, [yil] = @yil, [yakit] = @yakit, [vites] = @vites, [km] = @km, [kasaTipi] = @kasaTipi, [motorGucu] = @motorGucu, [motorHacmi] = @motorHacmi, [cekis] = @cekis, [renk] = @renk, [plaka] = @plaka, [durumu] = @durumu, [fiyat] = @fiyat, [markaID] = @markaID WHERE [arabaID] = @original_arabaID AND (([resim] = @original_resim) OR ([resim] IS NULL AND @original_resim IS NULL)) AND (([seri] = @original_seri) OR ([seri] IS NULL AND @original_seri IS NULL)) AND (([model] = @original_model) OR ([model] IS NULL AND @original_model IS NULL)) AND (([yil] = @original_yil) OR ([yil] IS NULL AND @original_yil IS NULL)) AND (([yakit] = @original_yakit) OR ([yakit] IS NULL AND @original_yakit IS NULL)) AND (([vites] = @original_vites) OR ([vites] IS NULL AND @original_vites IS NULL)) AND (([km] = @original_km) OR ([km] IS NULL AND @original_km IS NULL)) AND (([kasaTipi] = @original_kasaTipi) OR ([kasaTipi] IS NULL AND @original_kasaTipi IS NULL)) AND (([motorGucu] = @original_motorGucu) OR ([motorGucu] IS NULL AND @original_motorGucu IS NULL)) AND (([motorHacmi] = @original_motorHacmi) OR ([motorHacmi] IS NULL AND @original_motorHacmi IS NULL)) AND (([cekis] = @original_cekis) OR ([cekis] IS NULL AND @original_cekis IS NULL)) AND (([renk] = @original_renk) OR ([renk] IS NULL AND @original_renk IS NULL)) AND (([plaka] = @original_plaka) OR ([plaka] IS NULL AND @original_plaka IS NULL)) AND (([durumu] = @original_durumu) OR ([durumu] IS NULL AND @original_durumu IS NULL)) AND (([fiyat] = @original_fiyat) OR ([fiyat] IS NULL AND @original_fiyat IS NULL)) AND (([markaID] = @original_markaID) OR ([markaID] IS NULL AND @original_markaID IS NULL))">
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
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
