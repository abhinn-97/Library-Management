<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="SteveBio.aspx.cs" Inherits="SteveBio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Image ID="Image1" runat="server" Height="235px" ImageUrl="~/img/steve.jpg" Width="212px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Quantity
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Description</p>
    <p>
        <i><b>Steve Jobs</b></i> is the authorized self-titled <a href="https://en.wikipedia.org/wiki/Biography" title="Biography">biography</a> book of <a href="https://en.wikipedia.org/wiki/Steve_Jobs" title="Steve Jobs">Steve Jobs</a>. The book was written at the request of Jobs by <a href="https://en.wikipedia.org/wiki/Walter_Isaacson" title="Walter Isaacson">Walter Isaacson</a>, a former executive at <a href="https://en.wikipedia.org/wiki/CNN" title="CNN">CNN</a> and <i><a href="https://en.wikipedia.org/wiki/Time_(magazine%2529" title="Time (magazine)">TIME</a></i> who has written best-selling biographies of <a href="https://en.wikipedia.org/wiki/Benjamin_Franklin" title="Benjamin Franklin">Benjamin Franklin</a> and <a href="https://en.wikipedia.org/wiki/Albert_Einstein" title="Albert Einstein">Albert Einstein</a>.</p>
    <p>
        About The Author</p>
    <p>
        <b>Walter Isaacson</b> (born May 20, 1952 is an American writer and journalist. He is the President and CEO of the <a href="https://en.wikipedia.org/wiki/Aspen_Institute" title="Aspen Institute">Aspen Institute</a>, a nonpartisan educational and policy studies organization based in Washington, D.C. He has been the chairman and CEO of <a href="https://en.wikipedia.org/wiki/CNN" title="CNN">Cable News Network (CNN)</a> and the Managing Editor of <i><a class="mw-redirect" href="https://en.wikipedia.org/wiki/Time_magazine" title="Time magazine">Time</a></i>. He has written biographies of <a href="https://en.wikipedia.org/wiki/Steve_Jobs" title="Steve Jobs">Steve Jobs</a>, <a href="https://en.wikipedia.org/wiki/Benjamin_Franklin" title="Benjamin Franklin">Benjamin Franklin</a>, <a href="https://en.wikipedia.org/wiki/Albert_Einstein" title="Albert Einstein">
        Albert Einstein</a>, and <a href="https://en.wikipedia.org/wiki/Henry_Kissinger" title="Henry Kissinger">Henry Kissinger</a>.</p>
</asp:Content>

