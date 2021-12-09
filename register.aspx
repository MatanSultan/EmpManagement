<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" %>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    
        <br />
     <center>
        <table>
           
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Full name" ForeColor="Blue"></asp:Label></td>
                <td style="width: 138px"><asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name is Mandatory Fields" ControlToValidate="txtName" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="ID num" ForeColor="Blue"></asp:Label></td>
                <td style="width: 138px"><asp:TextBox ID="txtIDnum" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="ID is Mandatory Fields" ControlToValidate="txtIDnum" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ID must be 9 digits" ControlToValidate="txtIDnum" ForeColor="Red" ValidationExpression="[0-9]{9}">*</asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td style="width: 138px"><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is Mandatory Fields" ControlToValidate="txtPassword" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Email" ForeColor="Blue"></asp:Label></td>
                <td style="width: 138px"><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Not valid Email exampel : name@gmail.com" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Gender" ForeColor="Blue"></asp:Label></td>
                <td style="width: 138px"><asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">Male</asp:ListItem>
                    <asp:ListItem Value="1">Female</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Job title" ForeColor="Blue"></asp:Label></td>
                <td style="width: 138px"><asp:DropDownList ID="menueJobTitle" runat="server">
                    <asp:ListItem Value="-1">Select</asp:ListItem>
                    <asp:ListItem Value="1">Engineer</asp:ListItem>
                    <asp:ListItem Value="2">Teacher</asp:ListItem>
                    <asp:ListItem Value="3">Minister</asp:ListItem>
                    </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Job is mandatory" ControlToValidate="menueJobTitle" Font-Bold="True" ForeColor="Red" InitialValue="-1">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Status</td>
                <td style="width: 138px"><asp:DropDownList ID="tStatus" runat="server">
                    </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Status is mandatory" ControlToValidate="tStatus" Font-Bold="True" ForeColor="Red" InitialValue="-1">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="I agree" ForeColor="Blue"></asp:Label></td>
                <td style="width: 138px"><asp:CheckBox ID="cbAgree" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSubmit1" runat="server" Text="Register" OnClick="btnSubmit_Click" Width="200px" />
                    <br />
                    <asp:Label ID="Eror" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="272px" />
                </td>
            </tr>
        </table>
    
    </center>

</asp:Content>
