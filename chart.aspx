<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chart.aspx.cs" Inherits="chart" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <nav>
        <asp:Menu ID="Menu1" runat="server"></asp:Menu>

    </nav>
        <div>
        </div>
        <p>
            <asp:Chart ID="Chart1" runat="server" Height="683px" Width="712px" theme="ChartTheme.Green">
                <series>
                    <asp:Series ChartType="Line" Name="Series1">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea2" ChartType="Line" Name="Series2">
                        <Points>
                            <asp:DataPoint XValue="2018" YValues="150.00" />
                            <asp:DataPoint XValue="2019" YValues="280.00" />
                            <asp:DataPoint XValue="2020" YValues="185.00" />
                            <asp:DataPoint XValue="2021" YValues="156.00" />
                            <asp:DataPoint XValue="2022" YValues="320.00" />
                        </Points>
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                    <asp:ChartArea Name="ChartArea2">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </p>
    </form>
</body>
</html>
