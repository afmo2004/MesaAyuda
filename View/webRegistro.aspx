<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webRegistro.aspx.cs" Inherits="proyMesaAyuda.View.webRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title></title>

    <script type="text/javascript">
        function HeaderClick(CheckBox) {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.grvIncidente.ClientID %>');
            var TargetChildControl = "chkBxSelect";

            //Get all the control of the type INPUT in the base control.
            var Inputs = TargetBaseControl.getElementsByTagName("input");

            //Checked/Unchecked all the checkBoxes in side the GridView.
            for (var n = 0; n < Inputs.length; ++n)
                if (Inputs[n].type == 'checkbox' && Inputs[n].id.indexOf(TargetChildControl, 0) >= 0)
                    Inputs[n].checked = CheckBox.checked;
            //Reset Counter
            Counter = CheckBox.checked ? TotalChkBx : 0;
        }
    </script>
    <link href="../Style/StyleGridView.css" rel="stylesheet" />
</head>
<body>
    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none;" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                    <h4 class="modal-title" id="myModalLabel">Nuevo Registro de Incidencia</h4>
                </div>
                <div class="modal-body">
                    <div class="modal-content">
                        Cargando.....
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>

    <form id="form1" runat="server">
        <div id="btnCRUD">
            <a id="btnNuevo" data-toggle="modal" href="#myModal" class="btn  btn-default"> <span class="glyphicon glyphicon-list-alt"></span>Nuevo</a>
            <a id="btnEditar" data-toggle="modal" href="#myModal" class="btn  btn-default"> <span class="glyphicon glyphicon-pencil"></span>Editar</a>
            <a id="btnEliminar" data-toggle="modal" href="#myModal" class="btn  btn-default"> <span class="glyphicon glyphicon-trash"></span>Eliminar</a>
        </div>
        <div>
        <asp:GridView ID="grvIncidente" runat="server" AutoGenerateColumns="False" CssClass="mGrid">
            <Columns>
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                         <asp:CheckBox ID="chkBxSelect" runat="server" />
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderTemplate>
                        <asp:CheckBox ID="chkBxHeader" onclick="javascript:HeaderClick(this);" runat="server" />
                    </HeaderTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="idIncidente" HeaderText="Ticket" />
                <asp:BoundField DataField="abreviaturaUnidad" HeaderText="Unidad" />
                <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                <asp:BoundField DataField="tecnico" HeaderText="Técnico" />
                <asp:BoundField DataField="detalleIncidente" HeaderText="Incidente" />
                <asp:BoundField DataField="solucionIncidente" HeaderText="Solución" />
                <asp:BoundField DataField="fechaInicioIncidente" HeaderText="Fec. Inic." />
                <asp:BoundField DataField="fechaFinIncidente" HeaderText="Fec. Fin" />
            </Columns>
        </asp:GridView>
        </div>
   
    </form>
</body>
</html>
