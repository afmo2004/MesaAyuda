using proyMesaAyuda.Modell;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyMesaAyuda.Controller
{
    public class registroController
    {
        registroModell dao;
        public registroController()
        {
            dao = new registroModell();
        }

        public DataTable ListaTabla()
        {
            return dao.ListaIncidencia();
        }
    }
}