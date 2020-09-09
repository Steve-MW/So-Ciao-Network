<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imageUPTrial.aspx.cs" Inherits="So_Ciao_Network.imageUPTrial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="131px" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        <br />
        <br />
        <div>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </div>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Button" Width="127px" />
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
    </form>
</body>
</html>
