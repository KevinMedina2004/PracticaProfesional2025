<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="Inicio.aspx.cs" Inherits="PracticaProfesional2025.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">
            PRODUCTOS DISPONIBLES</h2>
        <h2 class="mb-4">
            <img alt="" 
                src="file:///C:/Users/Kevin/Desktop/PracticaProfesional2025-main/PracticaProfesional2025/Contenido/images/budin-chocolate.png" 
                style="width: 0; height: 0" /></h2>
        <asp:Panel ID="Panel1" runat="server" Height="211px">
            <asp:ImageButton ID="ImageButton2" runat="server" 
    ImageUrl="~/Contenido/descarga.jpg" 
    OnClick="ImageButton1_Click" />

        </asp:Panel>
        <h2 class="mb-4">
            &nbsp;</h2>
    </div>
</asp:Content>
