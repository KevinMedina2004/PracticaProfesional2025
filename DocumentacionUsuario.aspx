<%@ Page Title="Documentación del Usuario" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="DocumentacionUsuario.aspx.cs" Inherits="PracticaProfesional2025.DocumentacionUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .doc-container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            max-width: 900px;
            margin: 30px auto;
            font-family: 'Poppins', sans-serif;
            color: #333;
        }

        .doc-container h2 {
            color: #007bff;
            text-align: center;
            font-weight: 700;
            margin-bottom: 25px;
        }

        .doc-container h3 {
            color: #444;
            margin-top: 25px;
            border-bottom: 2px solid #007bff;
            padding-bottom: 5px;
        }

        .doc-container p {
            line-height: 1.8;
            text-align: justify;
            margin-bottom: 15px;
        }

        .doc-container ul {
            list-style-type: "✔ ";
            margin-left: 30px;
            margin-bottom: 15px;
        }

        .doc-container li {
            margin-bottom: 10px;
        }

        .highlight {
            background-color: #e7f3ff;
            border-left: 5px solid #007bff;
            padding: 10px 15px;
            border-radius: 5px;
        }
    </style>

    <div class="doc-container">
        <h2>Guía de Uso — Usuario General</h2>

        <p>
            Bienvenido a la plataforma <strong>de mi emprendimiento casero, la Feria Brisa!</strong>. Esta guía está pensada para ayudarte a navegar, 
            conocer los productos disponibles y realizar tus compras de manera sencilla y segura.
        </p>

        <h3>🔹 Inicio de Sesión</h3>
        <p>
            Para comenzar, debes ingresar tus credenciales (usuario y contraseña) en el formulario de inicio de sesión.
            Una vez autenticado, podrás acceder a todas las secciones de la página.
            Tambien podras unirte a nuestra comunidad registrandote desde la misma pantalla del login!
        </p>

        <h3>🔹 Navegación del Sitio</h3>
        <p>
            En el menú lateral encontrarás las diferentes categorías de productos disponibles:
        </p>
        <ul>
            <li><strong>☕ Para Merendar:</strong> Productos artesanales y alimentos caseros.</li>
            <li><strong>💍 Moda:</strong> Accesorios, ropa y complementos de diseño.</li>
            <li><strong>⚱️ Perfumería:</strong> Aromas, fragancias y cosmética natural.</li>
            <li><strong>🍰 Postres:</strong> Dulces, tortas y elaboraciones para compartir.</li>
        </ul>

        <p>
            Podés moverte libremente entre las secciones haciendo clic en cada una desde el menú lateral.
        </p>

        <h3>🔹 Visualización de Productos</h3>
        <p>
            En cada categoría verás los productos disponibles con su <strong>nombre</strong>, 
            <strong>descripción</strong> e <strong>imagen</strong>.
        </p>

        <div class="highlight">
            💡 Si un producto no tiene imagen disponible, se mostrará una imagen por defecto.
        </div>

        <h3>🔹 Agregar Productos al Carrito</h3>
        <p>
            Cada producto cuenta con un botón <strong>"Agregar al carrito"</strong>. 
            Al hacer clic, se sumará al carrito de compras junto con la cantidad seleccionada.
        </p>
        <p>
            En la parte superior derecha del sitio se muestra un ícono de carrito 🛒 con el número 
            total de productos agregados.
        </p>

        <h3>🔹 Ver el Carrito</h3>
        <p>
            Podés ingresar a tu carrito de compras haciendo clic en el ícono 🛒. Allí podrás:
        </p>
        <ul>
            <li>Ver el listado de productos seleccionados.</li>
            <li>Confirmar tu compra.</li>
        </ul>

        <h3>🔹 Cerrar Sesión</h3>
        <p>
            Cuando termines de utilizar la plataforma, hacé clic en el botón 
            <strong>"🚪 Cerrar Sesión"</strong> ubicado al final del menú lateral.
        </p>
        <p>
            Esto cerrará tu sesión actual y te redirigirá nuevamente al formulario de inicio de sesión.
        </p>

        <h3>📞 Soporte y Contacto</h3>
        <p>
            Si tenés dudas o necesitás asistencia, podés dirigirte a la sección 
            <strong>“📲 Contacto”</strong> desde el menú lateral. Allí podrás comunicarte directamente 
            con los administradores de la plataforma.
        </p>

        <div class="highlight">
            🌟 ¡Gracias por ser parte de nuestra Feria Emprendedora! Tu participación ayuda a crecer a 
            pequeños productores y emprendedores locales.
        </div>
    </div>
</asp:Content>
