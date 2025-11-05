using System;
using System.Web.UI.WebControls;

namespace PracticaProfesional2025
{
    public partial class Grilla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvProductos.DataBind();
            }

            // Detecta si se hizo postback desde SweetAlert2
            string eventTarget = Request["__EVENTTARGET"];
            string eventArgument = Request["__EVENTARGUMENT"];

            if (eventTarget == "EliminarProducto" && !string.IsNullOrEmpty(eventArgument))
            {
                int id = Convert.ToInt32(eventArgument);
                EliminarProducto(id);
            }
        }

        protected void gvProductos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Solo se usa para aplicar estilos o lógica adicional si querés
        }

        private void EliminarProducto(int id)
        {
            // Usa el SqlDataSource para eliminar por ID
            SqlDataSource1.DeleteParameters["Id"].DefaultValue = id.ToString();
            SqlDataSource1.Delete();
            gvProductos.DataBind(); // Refresca la grilla
        }
    }
}
