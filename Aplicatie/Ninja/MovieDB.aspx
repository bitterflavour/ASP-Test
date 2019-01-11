<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MovieDB.aspx.cs" Inherits="Aplicatie.Ninja.Catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Css/Catalog.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Css/Catalog.css" rel="stylesheet" />
    
    <div class="informatii">
        <div class="grid">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenrerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Titlu" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Titlu" HeaderText="Titlu" ReadOnly="True" SortExpression="Titlu" />
        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        <asp:BoundField DataField="AnulAparitiei" HeaderText="AnulAparitiei" SortExpression="AnulAparitiei" />
        <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
    </div>
        
        <div class="form">
<asp:FormView ID="FormView1" runat="server" DataKeyNames="Titlu" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    
    <EditItemTemplate>
        Titlu:
        <asp:Label ID="TitluLabel1" runat="server" Text='<%# Eval("Titlu") %>' />
        <br />
        Genre:
        <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
        <br />
        AnulAparitiei:
        <asp:TextBox ID="AnulAparitieiTextBox" runat="server" Text='<%# Bind("AnulAparitiei") %>' />
        <br />
        Director:
        <asp:TextBox ID="DirectorTextBox" runat="server" Text='<%# Bind("Director") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Titlu:
        <asp:TextBox ID="TitluTextBox" runat="server" Text='<%# Bind("Titlu") %>' />
        <br />
        Genre:
        <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
        <br />
        AnulAparitiei:
        <asp:TextBox ID="AnulAparitieiTextBox" runat="server" Text='<%# Bind("AnulAparitiei") %>' />
        <br />
        Director:
        <asp:TextBox ID="DirectorTextBox" runat="server" Text='<%# Bind("Director") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Titlu:
        <asp:Label ID="TitluLabel" runat="server" Text='<%# Eval("Titlu") %>' />
        <br />
        Genre:
        <asp:Label ID="GenreLabel" runat="server" Text='<%# Bind("Genre") %>' />
        <br />
        AnulAparitiei:
        <asp:Label ID="AnulAparitieiLabel" runat="server" Text='<%# Bind("AnulAparitiei") %>' />
        <br />
        Director:
        <asp:Label ID="DirectorLabel" runat="server" Text='<%# Bind("Director") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDate %>" DeleteCommand="DELETE FROM [Movies] WHERE [Titlu] = @Titlu" InsertCommand="INSERT INTO [Movies] ([Titlu], [Genre], [AnulAparitiei], [Director]) VALUES (@Titlu, @Genre, @AnulAparitiei, @Director)" SelectCommand="SELECT * FROM [Movies]" UpdateCommand="UPDATE [Movies] SET [Genre] = @Genre, [AnulAparitiei] = @AnulAparitiei, [Director] = @Director WHERE [Titlu] = @Titlu">
    <DeleteParameters>
        <asp:Parameter Name="Titlu" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Titlu" Type="String" />
        <asp:Parameter Name="Genre" Type="String" />
        <asp:Parameter Name="AnulAparitiei" Type="Int32" />
        <asp:Parameter Name="Director" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Genre" Type="String" />
        <asp:Parameter Name="AnulAparitiei" Type="Int32" />
        <asp:Parameter Name="Director" Type="String" />
        <asp:Parameter Name="Titlu" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    </div>
            
    </div>
</asp:Content>
