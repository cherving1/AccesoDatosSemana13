<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AccesoDatos.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Accseso a datos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            CodVendedor<asp:TextBox ID="txtCodVendedor" runat="server"></asp:TextBox>
            <br />
            Apellidos<asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
            <br />
            Nombres<asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" />
        </div>  
        <asp:GridView ID="gvVendedor" runat="server" OnSelectedIndexChanged="gvVendedor_SelectedIndexChanged">
        </asp:GridView>
    </form>
</body>
</html>
