<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kategori.aspx.cs" Inherits="agtabanli.kategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/adminkategori.css" rel="stylesheet" />
    <link href="css/btn.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 780px; height: 1000px; margin: auto;">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label24" runat="server" Text="Marka "></asp:Label>
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label26" runat="server" Text="Araba ID"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label27" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label25" runat="server" Text="Araba Markası İsmi"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox AutoPostBack="true" ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>




                <tr>



                    <td colspan="2">
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" CssClass="but1" />
                        <asp:Button ID="Button2" runat="server" Text="Güncelle" OnClick="Button2_Click" CssClass="but1" />
                        <asp:Button ID="Button3" runat="server" Text="Sİl" OnClick="Button3_Click" CssClass="but1" />
                    </td>
                </tr>
            </table>




        </div>
        <div style="width: 780px; height: 670px;">
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="780px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="markaID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="23" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField HtmlEncode="False" DataField="markaID" HeaderText="Marka ID" InsertVisible="False" ReadOnly="True" SortExpression="markaID" />
                    <asp:BoundField HtmlEncode="False" DataField="marka" HeaderText="Marka Adı" SortExpression="marka" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerSettings PageButtonCount="25" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:agtabanliConnectionString %>" SelectCommand="SELECT * FROM [tblMarka]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblMarka] WHERE [markaID] = @original_markaID AND (([marka] = @original_marka) OR ([marka] IS NULL AND @original_marka IS NULL))" InsertCommand="INSERT INTO [tblMarka] ([marka]) VALUES (@marka)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblMarka] SET [marka] = @marka WHERE [markaID] = @original_markaID AND (([marka] = @original_marka) OR ([marka] IS NULL AND @original_marka IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_markaID" Type="Int32" />
                    <asp:Parameter Name="original_marka" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="marka" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="marka" Type="String" />
                    <asp:Parameter Name="original_markaID" Type="Int32" />
                    <asp:Parameter Name="original_marka" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>

    </div>
</asp:Content>
