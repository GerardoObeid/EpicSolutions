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
            if (tbCurp.Text != ""  && tbCorreo.Text != "" && tbUsuario.Text != "" && tbTelefono.Text != "" && tbPassword.Text != "")
            {
                if (dbManager.makeQuery($"insert into usuario (idUsuario, idCentro, nombre, telefono, correo, hashedPassword, temp_password) values" +
                    $"({Int32.Parse(tbCurp.Text)}, 10072004, '{tbUsuario.Text}'," +
                    $"'{tbTelefono.Text}', '{tbCorreo.Text}',{tbPassword.Text}, 1)", true) != null)
                {
                    MessageBox.Show("Alta exitosa \nInformación ha sido copiada para que se propocione al usuario");
                    System.Threading.Thread.Sleep(1000);
                    Clipboard.SetText($"Manda las siguientes credenciales usuario: \n\tUSUARIO: {tbCorreo.Text}\n\t CONTRASEÑA: {tbPassword.Text}");
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
            tbCurp.Text = "";
            tbCorreo.Text = "";
            tbPassword.Text = "";
            tbTelefono.Text = "";
            tbCurp.Text = "";
            tbUsuario.Text = "";
        }

        private void cbPermisos_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
