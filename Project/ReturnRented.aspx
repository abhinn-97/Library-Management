<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="ReturnRented.aspx.cs" Inherits="ReturnRented" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        Name of Person&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Choose Any One</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [cname] FROM [Rents]"></asp:SqlDataSource>
    </p>
    <p>
        Book&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" TabIndex="1">
        </asp:DropDownList>
    </p>
    <p>
        Quantity&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book Returned" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>

