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
    /// Lógica de interacción para FollowUp.xaml
    /// </summary>
    public partial class FollowUp : Window
    {
        dbFunctions dbManager;
        List<Dictionary<string, string>> res;
        List<RadioButton> radioButtons = new List<RadioButton>();
        List<RadioButton> operaciones;
        StringBuilder stb = new StringBuilder();
        int selProv = -1;
        int selOp = -1;

        public FollowUp(dbFunctions dbManager)
        {
            InitializeComponent();

            this.dbManager = dbManager;

            operaciones = new List<RadioButton>() {rbProductos, rbServicios, rbBajaProd, rbBajaServicios };
            res = dbManager.makeQuery("SELECT distinct(area) from proveedor");
            scroll.Visibility = Visibility.Collapsed;
            tbVisualizacion.Visibility = Visibility.Collapsed;
            foreach (Dictionary<string, string> i in res)
            {
                cbAreas.Items.Add(i["area"]);
            }
        }

        private void cbAreas_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            res = dbManager.makeQuery($"SELECT c.nombre from proveedor p inner join cliente c on c.IdCliente=p.idCliente where area='{cbAreas.SelectedValue}'");
            lboxProveedores.Items.Clear();
            radioButtons.Clear();
            foreach (Dictionary<string, string> i in res)
            {
                RadioButton rb = new RadioButton();
                rb.Content = (i["nombre"]);

                radioButtons.Add(rb);
                lboxProveedores.Items.Add(rb);
            }
        }

        private string processRes(List<Dictionary<string, string>> res)
        {
            stb = new StringBuilder();
            foreach (Dictionary<string, string> entry in res)
            {
                foreach (string key in entry.Keys)
                {
                    stb.Append(key);
                    stb.Append(": ");
                    stb.Append(entry[key]);
                    stb.Append('\n');
                }
                stb.Append("\n\n");
            }
            return stb.ToString();
        }
        private void btSeleccionar_Click(object sender, RoutedEventArgs e)
        {
            selOp = validaSeleccion(operaciones);
            selProv = validaSeleccion(radioButtons);
            string query = "";
            tbVisualizacion.Text = "";

            if (cbAreas.SelectedIndex == -1 || selProv == -1 || selOp == -1)
            {
                MessageBox.Show("Tiene que seleccionar un área, proveedor y operación para continuar");
            }
            else
            {
                switch (selOp)
                {
                    case 0:
                        tbVisualizacion.Visibility = Visibility.Visible;
                        scroll.Visibility = Visibility.Visible;
                        query = $"select b.* from proveedor p inner join " +
                            $"bien b on p.idProveedor=b.idProveedor " +
                            $"where b.tipo='producto' and p.idCliente=(SELECT idCliente " +
                            $"FROM cliente WHERE nombre ='{radioButtons[selProv].Content.ToString()}');";
                        tbVisualizacion.Text = processRes(dbManager.makeQuery(query));
                    break;
                    case 1:
                        tbVisualizacion.Visibility = Visibility.Visible;
                        scroll.Visibility = Visibility.Visible;
                        query = $"select b.* from proveedor p inner join " +
                            $"bien b on p.idProveedor=b.idProveedor " +
                            $"where b.tipo='servicio' and p.idCliente=(SELECT idCliente " +
                            $"FROM cliente WHERE nombre ='{radioButtons[selProv].Content.ToString()}');";
                        tbVisualizacion.Text = processRes(dbManager.makeQuery(query));
                        break;
                    case 3:
                        tbVisualizacion.Visibility = Visibility.Collapsed;
                        MessageBox.Show("Baja de productos de proveedor");
                    break;
                    case 4:
                        tbVisualizacion.Visibility = Visibility.Collapsed;
                        MessageBox.Show("Baja de servicios de proveedor");
                    break;
                }
            }
           

        }
        private int validaSeleccion(List<RadioButton> toValidate)
        {
            int res = -1;

            for (int i = 0; i < toValidate.Count; i++)
            {
                if (toValidate[i].IsChecked == true)
                {
                    res = i;
                    break;
                }
            }

            return res;

        }
        private void lboxProveedores_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btNuevaOperacion_Click(object sender, RoutedEventArgs e)
        {
            selOp = validaSeleccion(operaciones);
            selProv = validaSeleccion(radioButtons);
            if (selOp != -1)
                radioButtons[selProv].IsChecked = false;
            if (selProv != -1)
                operaciones[selOp].IsChecked = false;
            cbAreas.SelectedIndex = -1;
            tbVisualizacion.Visibility = Visibility.Collapsed;
            scroll.Visibility = Visibility.Collapsed;

        }
    }
}
