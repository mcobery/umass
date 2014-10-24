<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="Demo.Logon" %>

<!DOCTYPE html>

<html lang="en">
<head>

    <title>Demo Login Page</title>

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
  <![endif]-->
    <link rel="stylesheet" type="text/css" href="../common/wd-main.css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
    <style type="text/css">
        .fullHW
        {
            width: 100%;
            height: 100%;
        }
        .fullW
        {
            width: 100%;
        }
        .uml-header
        {
            color:white;
            background-color:black;
            height: 100px;
            font-size:16.0pt;
            font-family:"Arial","sans-serif";
        }
        .uml-footer
        {
            color:white;
            background-color:black;
            height: 100px;
            font-size:8.0pt;
            font-family:"Arial","sans-serif";
        }
        .uml-height
        {
            height: 400px;
        }
        .uml-nav
        {
            background-color:green;
        }
        .uml-content
        {
            background-color:white;
            font-size:11.0pt;
            color:black;
            font-family:"Arial","sans-serif";
        }

        a:link              { color:yellow; text-decoration:none; }
        a:visited           { color:yellow; text-decoration:none; }
        a:hover             { color:yellow; text-decoration:none; }
        a:active            { color:yellow; text-decoration:none; }
        

    </style>
</head>
<body>
  <form id="form1" runat="server">
    <div class="container-fluid bs-docs-container">
        <div class="row uml-header">
            <div class="col-xs-12">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-3 uml-height uml-nav">
            </div>

            <div class="col-xs-5 uml-height uml-content">
                <asp:Login ID="loginDemo" runat="server" OnAuthenticate="loginDemo_Authenticate"></asp:Login>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 uml-footer">
            </div>
        </div>
    </div>

  </form>
    <!-- Bootstrap core JavaScript ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/holder/2.2.0/holder.js"></script>

</body>
</html>

</html>
