﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb"
Inherits="_Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>

<p> Welcome to John's Mortgage Calculator </p>

<br /><br />
Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br />
Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server"
></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br />
Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br />
<asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
<br /><br />

<%If Not IsPostBack Then%>

<p> Welcome to John's Mortgage Calculator. Please complete the fields above to have your monthly payment calculated for you.</p>

<%Else%> 

Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>

<br /><br />
<asp:GridView ID="loanGridView" runat="server" />

    <%End If%>
</div>
</form>
</body>
</html>