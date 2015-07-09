using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace proyMesaAyuda.Connection
{
    public class ConectaBD
    {
        private static SqlConnection NewCon;
        private static string StrCon=ConfigurationManager.ConnectionStrings["CadConex"].ConnectionString;
        public ConectaBD()
        { }

        public static SqlConnection getConnection()
        {
            NewCon = new SqlConnection(StrCon);
            return NewCon;
        }
    }
}