using System;
using System.Collections.Generic;
using System.Data;
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
    /// Lógica de interacción para Active.xaml
    /// </summary>
    public partial class Active : Window
    {
        string user;
        dbFunctions dbManager;
        public Active(string user, dbFunctions dbManager)
        {
            this.user = user;
            this.dbManager = dbManager;
            InitializeComponent();
            string query = "SELECT ped.idPedido as ID_Pedido, ped.fecha_creacion as Fecha_Creación," +
                "ped.fecha_entrega as Fecha_Entrega, ped.monto as Monto, ped.cantidad as Cantidad, ped.comentarios as Comentarios," +
                "c.nombre as Nombre_Cliente, b.nombre as Nombre_Bien " +
                "FROM pedido ped INNER JOIN bien b ON b.clave=ped.claveBien " +
                "INNER JOIN cliente c on c.idCliente=ped.idCliente " +
                "WHERE fecha_entrega >= GETDATE()";
            
            DataTable dt = dbManager.formatForGrid(dbManager.makeQuery(query));
          
            gridActiveOrders.ItemsSource = dt.DefaultView;
        }



        private void btHome_Click(object sender, RoutedEventArgs e)
        {
            mainPage mp = new mainPage(user, dbManager);
            mp.Show();
            this.Hide();
        }

        private void gridActiveOrders_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
