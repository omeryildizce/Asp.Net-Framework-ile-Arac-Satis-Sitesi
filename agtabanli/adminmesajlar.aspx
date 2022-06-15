<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminmesajlar.aspx.cs" Inherits="agtabanli.adminmesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/adminmesajlar.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>

            <asp:GridView Width="780px" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mesajID" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" PageSize="9">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField HtmlEncode="false" DataField="mesajID" HeaderText="Mesaj ID" InsertVisible="False" ReadOnly="True" SortExpression="mesajID" />
                    <asp:BoundField HtmlEncode="false" DataField="ad" HeaderText="Gönderen" SortExpression="ad" />
                    <asp:BoundField HtmlEncode="false" DataField="mail" HeaderText="E-mail" SortExpression="mail" />
                    <asp:BoundField HtmlEncode="false" DataField="konu" HeaderText="Konu" SortExpression="konu" />
                    <asp:BoundField HtmlEncode="false" DataField="mesaj" HeaderText="Mesaj" SortExpression="mesaj" >
                    <ItemStyle Height="100px" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:agtabanliConnectionString %>" DeleteCommand="DELETE FROM [tblMesaj] WHERE [mesajID] = @original_mesajID AND (([ad] = @original_ad) OR ([ad] IS NULL AND @original_ad IS NULL)) AND (([mail] = @original_mail) OR ([mail] IS NULL AND @original_mail IS NULL)) AND (([konu] = @original_konu) OR ([konu] IS NULL AND @original_konu IS NULL)) AND (([mesaj] = @original_mesaj) OR ([mesaj] IS NULL AND @original_mesaj IS NULL))" InsertCommand="INSERT INTO [tblMesaj] ([ad], [mail], [konu], [mesaj]) VALUES (@ad, @mail, @konu, @mesaj)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblMesaj]" UpdateCommand="UPDATE [tblMesaj] SET [ad] = @ad, [mail] = @mail, [konu] = @konu, [mesaj] = @mesaj WHERE [mesajID] = @original_mesajID AND (([ad] = @original_ad) OR ([ad] IS NULL AND @original_ad IS NULL)) AND (([mail] = @original_mail) OR ([mail] IS NULL AND @original_mail IS NULL)) AND (([konu] = @original_konu) OR ([konu] IS NULL AND @original_konu IS NULL)) AND (([mesaj] = @original_mesaj) OR ([mesaj] IS NULL AND @original_mesaj IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_mesajID" Type="Int32" />
                    <asp:Parameter Name="original_ad" Type="String" />
                    <asp:Parameter Name="original_mail" Type="String" />
                    <asp:Parameter Name="original_konu" Type="String" />
                    <asp:Parameter Name="original_mesaj" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="konu" Type="String" />
                    <asp:Parameter Name="mesaj" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="konu" Type="String" />
                    <asp:Parameter Name="mesaj" Type="String" />
                    <asp:Parameter Name="original_mesajID" Type="Int32" />
                    <asp:Parameter Name="original_ad" Type="String" />
                    <asp:Parameter Name="original_mail" Type="String" />
                    <asp:Parameter Name="original_konu" Type="String" />
                    <asp:Parameter Name="original_mesaj" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
