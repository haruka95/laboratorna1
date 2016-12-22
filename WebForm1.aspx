<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lab_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
        function show()
        {
            var a = document.getElementById("TextBox1").value;
            var b = document.getElementById("TextBox2").value;

            if (check(a, b))
                return true;
            return false;
        }

        function check(a, b)
        {
            var d = "";
            if (a == "")
            {
                d += "First Number\r\n";
                document.getElementById("TextBox1").value = "";

            }
            if (b == "") {
                d += "Second Number\r\n";
                document.getElementById("TextBox2").value = "";

            }
            if (isNaN(a)) {
                d += "First Number is NoCorect\r\n";
                document.getElementById("TextBox1").value = "";

            }
            if (isNaN(b)) {
                d += "Second Number is NoCorect\r\n";
                document.getElementById("TextBox2").value = "";

            }
            if(d!="")
            {
                alert(d);
                return 0;
            }

            return 1;
        }
    </script>

    <form id="form1" runat="server">
    <div style="height: 57px; width: 748px">
    
        <asp:Label ID="Label1" runat="server" Text="First number"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="73px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Second number"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="73px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" Height="21px" OnClick="Button1_Click" style="margin-left: 0px" Text="+" Width="42px" OnClientClick="return show()"/>
        <asp:Button ID="Button2" runat="server" Height="21px" OnClick="Button2_Click" style="margin-top:  3px" Text="-" Width="43px" OnClientClick="return show()"/>
        <asp:Button ID="Button3" runat="server" Height="21px" OnClick="Button3_Click" style="margin-left: 2px" Text="*" Width="42px" OnClientClick="return show()"/>
        <asp:Button ID="Button4" runat="server" Height="21px" OnClick="Button4_Click" style="margin-left: 1px" Text="/" Width="42px" OnClientClick="return show()"/>
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="RESULT   "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="73px"></asp:TextBox>

        <br />

    
    </div>
    </form>
</body>
</html>
