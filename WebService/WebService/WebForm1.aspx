<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebService.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Input X"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Input Y"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Put" OnClick="Button1_Click" />
        </p>
        Summ <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <p>
            Sub <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Mul <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
