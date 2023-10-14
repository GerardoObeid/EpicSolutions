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
using System.Threading;

namespace EpicSolutions
{
    /// <summary>
    /// Lógica de interacción para Register.xaml
    /// </summary>
    public partial class Register : Window
    {
        dbFunctions dbManager;
        List<Dictionary<string, string>> res;
        public Register(dbFunctions dbManager)
        {
            this.dbManager = dbManager;
            res = dbManager.makeQuery("select nombre from usuario");
            InitializeComponent();
            foreach (Dictionary<string, string> i in res)
            {
                 cbPermisos.Items.Add(i["nombre"]);
            }
            
        }

        private void tbRegistrar_Click(object sender, RoutedEventArgs e)
        {
            Random random = new Random();
            string tempPassword;
            int NUM_CENTRO = 10072004;

            if (tbNomUsuario.Text != ""  && tbCorreo.Text != "" && tbUsuario.Text != "" && tbTelefono.Text != "")
            {
                tempPassword = random.Next(100000000, 1000000000).ToString();
                string query = $"INSERT INTO usuario (nomUsuario, idCentro, nombre, telefono, correo, hashedPassword, tempPassword) VALUES" +
                        $"('{tbNomUsuario.Text}', {NUM_CENTRO} , '{tbUsuario.Text}'," +
                        $"'{tbTelefono.Text}', '{tbCorreo.Text}', '{dbManager.HashPassword(tempPassword)}', 1)";

                if (dbManager.makeQuery(query, true) != null)
                {
                    MessageBox.Show("Alta exitosa \nInformación ha sido copiada para que se propocione al usuario");
                    Clipboard.SetText($"Iniciar sesión como: \n\tUSUARIO: {tbNomUsuario.Text}\n\t CONTRASEÑA: {tempPassword}");
                    System.Threading.Thread.Sleep(1000);
                    cleanInputs();
                    
                }
                else
                {
                    MessageBox.Show("Alta no exitosa");
                }
            }
            else
            {
                MessageBox.Show("Por favor llene todos los campos solicitados");
            }
        }

        private void cleanInputs()
        {
            tbCorreo.Text = "";
            tbNomUsuario.Text = "";
            tbTelefono.Text = "";
            tbUsuario.Text = "";
        }

        private void cbPermisos_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void tbNomUsuario_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
