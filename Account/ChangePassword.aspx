<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true"
    CodeBehind="ChangePassword.aspx.cs" Inherits="Gestor.Account.ChangePassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <style type="text/css">
      .Muito_fraca
       {
         /*background-color:red;*/
         font-size:15px;
         font-weight:bold;
         color:White;
         
         background-image:-webkit-linear-gradient(0,rgb(191,15,15) 0%,rgb(130,130,130) 100%);
        background-image:-moz-linear-gradient(0,rgb(191,15,15) 0%,rgb(130,130,130) 100%);
        background-image:-o-linear-gradient(0,rgb(191,15,15) 0%,rgb(130,130,130) 100%);
        background-image:-ms-linear-gradient(0,rgb(191,15,15) 0%,rgb(130,130,130) 100%);

         
         }
          .fraca
        {
         /*background-color:orange;*/
         font-size:15px;
         font-weight:bold;
         color:White;
         
         background-image:-webkit-linear-gradient(0,rgb(255,163,25) 0%,rgb(130,130,130) 100%);
         background-image:-moz-linear-gradient(0,rgb(255,163,25) 0%,rgb(130,130,130) 100%);
         background-image:-o-linear-gradient(0,rgb(255,163,25) 0%,rgb(130,130,130) 100%);
         background-image:-ms-linear-gradient(0,rgb(255,163,25) 0%,rgb(130,130,130) 100%);
         }
          .media
         {
          /*background-color: #A52A2A;*/
          font-size:15px;
         font-weight:bold;
         color:White;
         
         background-image:-webkit-linear-gradient(0,rgb(148,100,72) 0%,rgb(130,130,130) 100%);
         background-image:-moz-linear-gradient(0,rgb(148,100,72) 0%,rgb(130,130,130) 100%);
         background-image:-o-linear-gradient(0,rgb(148,100,72) 0%,rgb(130,130,130) 100%);
         background-image:-ms-linear-gradient(0,rgb(148,100,72) 0%,rgb(130,130,130) 100%);
         }
          .excelente
         {
         background-color:yellow;
         font-size:15px;
         font-weight:bold;
         color:White;
         
         background-image:-webkit-linear-gradient(0,rgb(255,195,0) 0%,rgb(130,130,130) 100%);
         background-image:-moz-linear-gradient(0,rgb(255,195,0) 0%,rgb(130,130,130) 100%);
         background-image:-o-linear-gradient(0,rgb(255,195,0) 0%,rgb(130,130,130) 100%);
         background-image:-ms-linear-gradient(0,rgb(255,195,0) 0%,rgb(130,130,130) 100%);
         
         }
          .forte
         {
         background-color:green;
         font-size:15px;
         font-weight:bold;
         color:White;
         
         background-image:-webkit-linear-gradient(0,rgb(30,105,20) 0%,rgb(130,130,130) 100%);
         background-image:-moz-linear-gradient(0,rgb(30,105,20) 0%,rgb(130,130,130) 100%);
         background-image:-o-linear-gradient(0,rgb(30,105,20) 0%,rgb(130,130,130) 100%);
         background-image:-ms-linear-gradient(0,rgb(30,105,20) 0%,rgb(130,130,130) 100%);
         }
          .border
         {
          border: medium solid #800000;
          width:500px;                
         }
      </style>
    <div id="wrapper-senha" class="container">
        <%--<div class="col-md-4 col-md-offset-4 logoSis">
            <img src="../imagens/logo-sindico.png" alt="Meu Síndico" />
        </div>--%>
        <div class="col-md-4 col-md-offset-4">
            <div class="body-senha">
                <h2 class="header-senha">Alteração de Senha</h2>
                <div class="wrapper-senha">
                    <p>Informe os dados de acesso abaixo.</p>
                    <p>A senha deve conter no mínimo 6 carácteres.</p>
                    <span class="failureNotification">
                        <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification" ValidationGroup="ChangeUserPasswordValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="changePassword">
                            <div class="labels">
                                <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Senha Atual:</asp:Label>
                                <asp:TextBox ID="CurrentPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" CssClass="failureNotification" ErrorMessage="Informe a senha atual." ToolTip="Senha atual." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="labels">
                                <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">Nova Senha:</asp:Label>                        
                                <asp:TextBox ID="NewPassword" MaxLength="10" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" CssClass="failureNotification" ErrorMessage="Informe a nova senha." ToolTip="Nova senha." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="labels">
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirme a Senha:</asp:Label>
                                <asp:TextBox ID="ConfirmNewPassword" MaxLength="10" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" CssClass="failureNotification" Display="Dynamic" ErrorMessage="Confirme a nova senha." ToolTip="Confirmação da nova senha." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" CssClass="failureNotification" Display="Dynamic" ErrorMessage="A confirmação da nova senha esta divergente." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                                <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID ="NewPassword" DisplayPosition = "RightSide" StrengthIndicatorType = "Text" PreferredPasswordLength = "10" PrefixText = "Segurança: " MinimumNumericCharacters = "6" TextStrengthDescriptions = "Muito fraca; fraca; média; forte; excelente" StrengthStyles = "Muito_fraca; fraca; media; forte; excelente" CalculationWeightings = "50;15;15;20" BarBorderCssClass="border" HelpStatusLabelID="" BarIndicatorCssClass=""></asp:PasswordStrength></div>
                        </fieldset>
                        <div class="submitButton">
                            <asp:Button ID="CancelPushButton" runat="server" PostBackUrl="~/default.aspx"  CausesValidation="False" CommandName="Cancel" Text="Cancelar" CssClass="btn btn-primary"/>
                            <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Alterar Senha"  CssClass="btn btn-primary" ValidationGroup="ChangeUserPasswordValidationGroup" OnClick="ChangePasswordPushButton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
