<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="AspAjax.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <script>
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    prm.add_initializeRequest(InitializeRequest);

    function InitializeRequest(sender, args) {
        if (prm.get_isInAsyncPostBack()) {
            args.set_cancel(true);
        }
    }

    function AbortPostBack() {
        if (prm.get_isInAsyncPostBack()) {
            prm.abortPostBack();
        }
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <asp:Label ID="Label1" runat="server" />
        <br />
       <br />
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="Button4" EventName="Click" />
    </Triggers>
</asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <asp:Label ID="Label2" runat="server" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Обновить" OnClick="Button2_Click" />
    </ContentTemplate>
</asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <asp:Label ID="Label3" runat="server" />
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
    </Triggers>
</asp:UpdatePanel>
        <br />
        <asp:Button ID="Button4" runat="server" Text="Обновить все панели" />
        <br />
        <asp:Timer ID="Timer1" runat="server" Interval="15000" />

         <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div style="background-color: #FFFFE0; padding: 20px">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" />
                        <br />
                        <br />
                        <asp:Button ID="cmdRefreshTime" runat="server" 
                            Text="Запустить процесс обновления страницы"
                            OnClick="cmdRefreshTime_Click" />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <br /><br />
                    <div style="font-size: x-small">
                        Соединение с сервером ...
                        <img src="ajax-loader.gif" alt="Загрузка" style="vertical-align:middle" />
                        <input id="Button1" onclick="AbortPostBack()" 
                            type="button" value="Отменить задачу" />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
    </div>
    </form>
</body>
</html>
