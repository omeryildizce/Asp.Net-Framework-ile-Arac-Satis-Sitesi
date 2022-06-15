<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminyorumlar.aspx.cs" Inherits="agtabanli.adminyorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/adminyorumlar.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: auto; overflow-x: auto;">
        <div>
            <asp:GridView Width="780px" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="yorumID" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" PageSize="6">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="yorumID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="yorumID" />
                    <asp:CheckBoxField  DataField="onay" HeaderText="Onay" SortExpression="onay" />
                    <asp:BoundField ReadOnly="True" DataField="yorumAd" HeaderText="Ad" SortExpression="yorumAd" />
                    <asp:BoundField ReadOnly="True" DataField="yorumSoyad" HeaderText="Soyad" SortExpression="yorumSoyad" />
                    <asp:BoundField ReadOnly="True" DataField="yorumTarih" HeaderText="Tarih" SortExpression="yorumTarih" />
                    <asp:BoundField ItemStyle-Width="250px" ReadOnly="True" DataField="icerik" HeaderText="Yorum" SortExpression="icerik">
<ItemStyle Width="250px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField ReadOnly="True" DataField="arabaID" HeaderText="Araba ID" SortExpression="arabaID"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:agtabanliConnectionString %>" DeleteCommand="DELETE FROM [tblYorumlar] WHERE [yorumID] = @original_yorumID AND (([yorumAd] = @original_yorumAd) OR ([yorumAd] IS NULL AND @original_yorumAd IS NULL)) AND (([yorumSoyad] = @original_yorumSoyad) OR ([yorumSoyad] IS NULL AND @original_yorumSoyad IS NULL)) AND (([yorumTarih] = @original_yorumTarih) OR ([yorumTarih] IS NULL AND @original_yorumTarih IS NULL)) AND (([onay] = @original_onay) OR ([onay] IS NULL AND @original_onay IS NULL)) AND (([icerik] = @original_icerik) OR ([icerik] IS NULL AND @original_icerik IS NULL)) AND (([arabaID] = @original_arabaID) OR ([arabaID] IS NULL AND @original_arabaID IS NULL))" InsertCommand="INSERT INTO [tblYorumlar] ([yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (@yorumAd, @yorumSoyad, @yorumTarih, @onay, @icerik, @arabaID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblYorumlar] ORDER BY [yorumTarih] DESC" UpdateCommand="UPDATE [tblYorumlar] SET [yorumAd] = @yorumAd, [yorumSoyad] = @yorumSoyad, [yorumTarih] = @yorumTarih, [onay] = @onay, [icerik] = @icerik, [arabaID] = @arabaID WHERE [yorumID] = @original_yorumID AND (([yorumAd] = @original_yorumAd) OR ([yorumAd] IS NULL AND @original_yorumAd IS NULL)) AND (([yorumSoyad] = @original_yorumSoyad) OR ([yorumSoyad] IS NULL AND @original_yorumSoyad IS NULL)) AND (([yorumTarih] = @original_yorumTarih) OR ([yorumTarih] IS NULL AND @original_yorumTarih IS NULL)) AND (([onay] = @original_onay) OR ([onay] IS NULL AND @original_onay IS NULL)) AND (([icerik] = @original_icerik) OR ([icerik] IS NULL AND @original_icerik IS NULL)) AND (([arabaID] = @original_arabaID) OR ([arabaID] IS NULL AND @original_arabaID IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_yorumID" Type="Int32" />
                    <asp:Parameter Name="original_yorumAd" Type="String" />
                    <asp:Parameter Name="original_yorumSoyad" Type="String" />
                    <asp:Parameter Name="original_yorumTarih" Type="DateTime" />
                    <asp:Parameter Name="original_onay" Type="Boolean" />
                    <asp:Parameter Name="original_icerik" Type="String" />
                    <asp:Parameter Name="original_arabaID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="yorumAd" Type="String" />
                    <asp:Parameter Name="yorumSoyad" Type="String" />
                    <asp:Parameter Name="yorumTarih" Type="DateTime" />
                    <asp:Parameter Name="onay" Type="Boolean" />
                    <asp:Parameter Name="icerik" Type="String" />
                    <asp:Parameter Name="arabaID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="yorumAd" Type="String" />
                    <asp:Parameter Name="yorumSoyad" Type="String" />
                    <asp:Parameter Name="yorumTarih" Type="DateTime" />
                    <asp:Parameter Name="onay" Type="Boolean" />
                    <asp:Parameter Name="icerik" Type="String" />
                    <asp:Parameter Name="arabaID" Type="Int32" />
                    <asp:Parameter Name="original_yorumID" Type="Int32" />
                    <asp:Parameter Name="original_yorumAd" Type="String" />
                    <asp:Parameter Name="original_yorumSoyad" Type="String" />
                    <asp:Parameter Name="original_yorumTarih" Type="DateTime" />
                    <asp:Parameter Name="original_onay" Type="Boolean" />
                    <asp:Parameter Name="original_icerik" Type="String" />
                    <asp:Parameter Name="original_arabaID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
