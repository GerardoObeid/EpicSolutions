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
    /// Lógica de interacción para Proveedores.xaml
    /// </summary>
    public partial class Proveedores : Window
    {
        dbFunctions dbManager;
        List<Dictionary<string, string>> res;
        List <RadioButton> radioButtons = new List<RadioButton>();
        StringBuilder stb = new StringBuilder();

        public Proveedores(dbFunctions dbManager)
        {
            InitializeComponent();
            List<string> areas = new List<string>(); 
            this.dbManager = dbManager;
            res = dbManager.makeQuery("SELECT distinct(area) from proveedor");
            foreach (Dictionary <string, string> i in res)
            {
                areas.Add(i["area"]);
            }
            foreach(string area in areas)
            {
                cbAreas.Items.Add(area);
            }
        }

        private void cbAreas_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            res = dbManager.makeQuery($"SELECT c.nombre from proveedor p inner join cliente c on c.IdCliente=p.idCliente where area='{cbAreas.SelectedValue}'");
            lboxProveedores.Items.Clear();
            foreach (Dictionary<string, string> i in res)
            {
                RadioButton rb = new RadioButton();
                rb.Content = (i["nombre"]);

                radioButtons.Add(rb);
                lboxProveedores.Items.Add(rb);
            }
        }

        private void lboxProveedores_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btSeleccionar_Click(object sender, RoutedEventArgs e)
        {
            stb.Clear();
            lbProveedorSeleccionado.Content = "Ningún proveedor se ha seleccionado";
            tbInfoProveedor.Text = "";

            foreach (RadioButton rb in radioButtons)
            {
                if (rb.IsChecked == true)
                {
                    lbProveedorSeleccionado.Content = $"Se seleccionó: {rb.Content.ToString()}";

                    res = dbManager.makeQuery($"select c.nombre, p.nombre as servicio, c.direccion, c.telefono, " +
                        $"p.telefono as telefonoEmpresa, p.direccion as direccionEmpresa, p.area" +
                        $" from cliente c " +
                        $"inner join proveedor p " +
                        $"on p.idCliente=c.idCliente " +
                        $"where c.nombre='{rb.Content.ToString()}'");
                    foreach (Dictionary<string, string> entry in res)
                    {
                        foreach(string key in entry.Keys)
                        {
                            stb.Append(key);
                            stb.Append(": ");
                            stb.Append(entry[key]);
                            stb.Append('\n');
                        }
                    }
                    tbInfoProveedor.Text = stb.ToString();
                    rInfoContrast.Visibility = Visibility.Visible;
                }
                rb.IsChecked = false;

            }
            
        }
    }
}
