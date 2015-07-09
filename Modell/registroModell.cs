using proyMesaAyuda.Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace proyMesaAyuda.Modell
{
    public class registroModell
    {
        public registroModell()
        { }

        public DataTable ListaIncidencia()
        {
            SqlConnection cn = ConectaBD.getConnection();
            SqlDataAdapter da = new SqlDataAdapter("usp_lista_incidencia", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}