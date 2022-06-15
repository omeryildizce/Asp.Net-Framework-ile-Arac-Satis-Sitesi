<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="agtabanli.adminpanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/adminpanel.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            height: 29px;
            text-align: center;
        }

        .auto-style14 {
            height: 26px;
            text-align: center;
        }

        .auto-style15 {
            height: 26px;
            font-size: 22px;
            text-align: center;
        }

    </style>
    <link href="css/btn.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>

            <table class="auto-style2">
                <tr>
                    
                
                    <td   class="auto-style14">
                        <asp:Label ID="Label34" runat="server" Text="ID : "></asp:Label>
                        <asp:Label ID="Label33" runat="server" ></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                     
                    <td class="auto-style1">
                        <asp:Label ID="Label31" runat="server" Text="Kullanıcı Adı"></asp:Label>
                    </td>
                  
                </tr>
                <tr>
                   
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    
                    <td class="auto-style15">
                        <asp:Label ID="Label32" runat="server" Text="Şifre"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                   
                    <td class="auto-style1">
                        <asp:TextBox TextMode="Password" ID="TextBox2" runat="server" CssClass="textbox1"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td  >
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Kaydet" OnClick="Button2_Click" CssClass="but1" />
                        <asp:Button ID="Button3" runat="server" Text="Sil" OnClick="Button3_Click" CssClass="but1" />
                        <asp:Button ID="Button4" runat="server" Text="Güncelle" OnClick="Button4_Click" CssClass="but1" />
                    </td>
                   
                </tr>
            </table>
                                    <br />

            <asp:GridView Width="780px" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="adminID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="20">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField HtmlEncode="false" DataField="adminID" HeaderText="Admin ID" InsertVisible="False" ReadOnly="True" SortExpression="adminID" />
                    <asp:BoundField HtmlEncode="false" DataField="admin" HeaderText="Admin" SortExpression="admin" />
                    <asp:BoundField HtmlEncode="false" DataField="sifre" HeaderText="Şifre" SortExpression="sifre" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:agtabanliConnectionString %>" DeleteCommand="DELETE FROM [tblYonetici] WHERE [adminID] = @original_adminID AND (([admin] = @original_admin) OR ([admin] IS NULL AND @original_admin IS NULL)) AND (([sifre] = @original_sifre) OR ([sifre] IS NULL AND @original_sifre IS NULL))" InsertCommand="INSERT INTO [tblYonetici] ([admin], [sifre]) VALUES (@admin, @sifre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblYonetici]" UpdateCommand="UPDATE [tblYonetici] SET [admin] = @admin, [sifre] = @sifre WHERE [adminID] = @original_adminID AND (([admin] = @original_admin) OR ([admin] IS NULL AND @original_admin IS NULL)) AND (([sifre] = @original_sifre) OR ([sifre] IS NULL AND @original_sifre IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_adminID" Type="Int32" />
                    <asp:Parameter Name="original_admin" Type="String" />
                    <asp:Parameter Name="original_sifre" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="admin" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="admin" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="original_adminID" Type="Int32" />
                    <asp:Parameter Name="original_admin" Type="String" />
                    <asp:Parameter Name="original_sifre" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
