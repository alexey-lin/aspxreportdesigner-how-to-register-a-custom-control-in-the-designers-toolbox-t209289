﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Sample.WebForm1" %>

<%@ Register Assembly="DevExpress.XtraReports.v17.1.Web, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<head runat="server">
    <title></title>
    <link href="CustomLabel\custom-label.css" rel="stylesheet" />
    <!-- #include file = "CustomLabel\custom-label-content.html" -->
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <script src="CustomLabel/custom-label.js"></script>

        <script type="text/javascript">
            function onCustomizeToolbox(s, e) {
                customizeToolbox(s, e, "<%=GetType(Sample.CustomLabel).ToString()%>",
                    "<%=GetType(Sample.CustomLabel).AssemblyQualifiedName%>");
            }
        </script>

        <dx:ASPxReportDesigner ID="reportDesigner1" runat="server" ClientInstanceName="reportDesigner">
            <ClientSideEvents CustomizeToolbox="onCustomizeToolbox" />
        </dx:ASPxReportDesigner>
    </form>
</body>
</html>