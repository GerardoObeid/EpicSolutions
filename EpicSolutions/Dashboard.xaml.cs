using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Syncfusion.UI.Xaml.Charts;

namespace EpicSolutions
{
    /// <summary>
    /// Lógica de interacción para Dashboard.xaml
    /// </summary>
    public partial class Dashboard : Window
    {
        dbFunctions dbManager;
        string user;
        
        public Dashboard(string user, dbFunctions dbManager)
        {
            InitializeComponent();
            this.dbManager = dbManager;
            this.user = user;

            List<ChartData> barChartData = GetBarChartDataFromDatabase();
            var barSeries = new BarSeries
            {
                XBindingPath = "XProperty",
                YBindingPath = "YProperty",
                ItemsSource = barChartData,
                Palette = ChartColorPalette.Metro
            };
            chart.Series.Add(barSeries); 

            List<ChartData> pieChartData = GetPieChartDataFromDatabase();
            var pieSeries = new PieSeries
            {
                XBindingPath = "XProperty",
                YBindingPath = "YProperty",
                ItemsSource = pieChartData

            };
            pieSeries.AdornmentsInfo = new ChartAdornmentInfo()
            {
                ShowLabel = true
            };
            pieChart.Legend = new ChartLegend
            {
                LegendPosition = LegendPosition.Outside,
                Orientation = ChartOrientation.Horizontal
            };
            pieChart.Series.Add(pieSeries);
        }

        private List<ChartData> GetBarChartDataFromDatabase()
        {
            string query = "SELECT TOP 10 pr.nombre AS XProperty, COUNT(*) AS YProperty FROM pedido ped " +
                           "INNER JOIN proveedor pr ON pr.idProveedor = ped.idProveedor " +
                           "GROUP BY pr.nombre ORDER BY YProperty DESC";
            var queryResult = dbManager.makeQuery(query);

            List<ChartData> chartData = new List<ChartData>();

            foreach (var row in queryResult)
            {
                chartData.Add(new ChartData
                {
                    XProperty = row["XProperty"],
                    YProperty = double.Parse(row["YProperty"])
                });
            }

            return chartData;
        }

        private List<ChartData> GetPieChartDataFromDatabase()
        {
            string query = "SELECT TOP 8 area AS XProperty, COUNT(*) AS YProperty FROM pedido ped " +
                           "INNER JOIN proveedor p ON p.idProveedor = ped.idProveedor " +
                           "GROUP BY area ORDER BY YProperty desc";
            var queryResult = dbManager.makeQuery(query);

            List<ChartData> chartData = new List<ChartData>();

            foreach (var row in queryResult)
            {
                chartData.Add(new ChartData
                {
                    XProperty = row["XProperty"],
                    YProperty = double.Parse(row["YProperty"])
                });
            }

            return chartData;
        }

        private void btHome_Click(object sender, RoutedEventArgs e)
        {
            mainPage mp = new mainPage(user, dbManager);
            mp.Show();
            this.Hide();
        }
    }
}
