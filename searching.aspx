<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="searching.aspx.cs" Inherits="EmpManagement.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table align="center" class="nav-justified">
        <tr>
            <td style="height: 22px; width: 139px"><asp:Label ID="Label1" runat="server" Text="ID to search"></asp:Label></td>
            <td style="height: 22px; width: 146px"><asp:TextBox ID="txtId" runat="server" style="margin-left: 0"></asp:TextBox></td>
            <td style="height: 22px">
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 139px"><asp:Label ID="Label2" runat="server" Text="Full name"></asp:Label></td>
            <td style="height: 20px; width: 146px"><asp:Label ID="nametxt" runat="server" Font-Bold="True"></asp:Label></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 139px"><asp:Label ID="Label4" runat="server" Text="Email"></asp:Label></td>
            <td class="modal-sm" style="width: 146px"><asp:Label ID="Emailtxt" runat="server" Font-Bold="True"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 139px"><asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label></td>
            <td class="modal-sm" style="width: 146px"><asp:Label ID="Gendertxt" runat="server" Font-Bold="True"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 139px"><asp:Label ID="Label8" runat="server" Text="Job title"></asp:Label></td>
            <td class="modal-sm" style="width: 146px"><asp:Label ID="jobtotel" runat="server" Font-Bold="True"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Error" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
