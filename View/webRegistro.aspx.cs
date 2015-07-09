using proyMesaAyuda.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyMesaAyuda.View
{
    public partial class webRegistro : System.Web.UI.Page
    {
        #region metodos
        void ConfigurarTabla()
        {

            grvIncidente.Columns[0].ItemStyle.Width = 40;
            grvIncidente.Columns[1].ItemStyle.Width = 80;
            grvIncidente.Columns[2].ItemStyle.Width = 30;
            grvIncidente.Columns[3].ItemStyle.Width = 160;
            grvIncidente.Columns[4].ItemStyle.Width = 160;
            grvIncidente.Columns[7].ItemStyle.Width = 80;
            grvIncidente.Columns[8].ItemStyle.Width = 80;
        }

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                grvIncidente.DataSource = new registroController().ListaTabla();
                grvIncidente.DataBind();
                ConfigurarTabla();
            }
        }
    }
}