<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="LCBcafewebsite.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="viewproduct.aspx?Id={0}" Text="view product" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="uploadphoto.aspx?Id={0}" Text="upload photo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626506_lcbcafe_dbConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" DeleteCommand="DELETE FROM [Products] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [Products] ([ID], [Name], [Description], [Price]) VALUES (@ID, @Name, @Description, @Price)" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description, [Price] = @Price WHERE [ID] = @original_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

<asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="207px" Width="1209px">
        <EditItemTemplate>
            ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />    
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />  
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
 
        </EditItemTemplate>
        <InsertItemTemplate>
           ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />     
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />    

            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />

            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />        
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />  
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        </ItemTemplate>
    </asp:FormView>


    </asp:Content>
