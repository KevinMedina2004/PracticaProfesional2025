using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System;

namespace PracticaProfesional2025
{
    [Serializable]   // útil si la sesión se serializa
    public class CarritoItem
    {
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
    }
}
