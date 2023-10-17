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

namespace EpicSolutions
{
    /// <summary>
    /// Lógica de interacción para Dashboard.xaml
    /// </summary>
    public partial class Dashboard : Window
    {
        dbFunctions dbManager;
        public class ChartData
        {
            public string XProperty { get; set; }
            public double YProperty { get; set; }
        }
        public Dashboard(dbFunctions dbManager)
        {
            InitializeComponent();
            this.dbManager = dbManager;

            List<ChartData> chartData = GetChartDataFromDatabase();
             var barSeries = new Syncfusion.UI.Xaml.Charts.BarSeries
            {
                XBindingPath = "XProperty",
                YBindingPath = "YProperty",
                ItemsSource = chartData
            };

            chart.Series.Add(barSeries);
        }





        private List<ChartData> GetChartDataFromDatabase()
        {
           

            string query = "SELECT pr.nombre AS XProperty, COUNT(*) AS YProperty FROM pedido ped " +
                       "INNER JOIN proveedor pr ON pr.idProveedor = ped.idProveedor " +
                       "GROUP BY pr.nombre";
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
        }
}
