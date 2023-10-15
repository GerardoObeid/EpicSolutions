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
using System.Text.RegularExpressions;

namespace EpicSolutions
{
    /// <summary>
    /// Lógica de interacción para Register.xaml
    /// </summary>
    public partial class Register : Window
    {
        dbFunctions dbManager;
        Random random = new Random();
        string user;
        List<Dictionary<string, string>> res;
        CheckBox[] permisos;
        List <int> permisosSel;
        public Register(string user, dbFunctions dbManager)
        {
            this.dbManager = dbManager;
            this.user = user;

            InitializeComponent();
            permisos = new CheckBox[] { chbBaja, chbPermisos, chbRestablecer };

            llenaUsuariosPermisos();
            stPermisos.Visibility = Visibility.Collapsed;

        }
        public void llenaUsuariosPermisos()
        {
            res = dbManager.makeQuery("select nomUsuario from usuario");
            cbPermisos.Items.Clear();
            cbRestablecerBaja.Items.Clear();
            foreach (Dictionary<string, string> i in res)
            {
                cbPermisos.Items.Add(i["nomUsuario"]);
                cbRestablecerBaja.Items.Add(i["nomUsuario"]);
            }
        }
        private void tbRegistrar_Click(object sender, RoutedEventArgs e)
        {
            string tempPassword;
            int NUM_CENTRO = 10072004;

            if (tbNomUsuario.Text != ""  && tbCorreo.Text != "" && tbUsuario.Text != "" && tbTelefono.Text != "")
            {
                if (Regex.IsMatch(tbCorreo.Text, @"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"))
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
                        llenaUsuariosPermisos();
                        cleanInputs();

                    }
                    else
                    {
                        MessageBox.Show("Alta no exitosa");
                    }
                }
                else
                    MessageBox.Show("Correo Inválido");
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

       
        private void tbNomUsuario_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void tbUsuario_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            string pattern = @"^[\p{L}\s]+$";

            if (!Regex.IsMatch(e.Text, pattern))
            {
                e.Handled = true; 
                MessageBox.Show("Only alphanumeric characters are allowed.");
            }
        }

        private void tbTelefono_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

            string pattern = @"^\d{0,15}$";

            if (!Regex.IsMatch(e.Text, pattern) || e.Text.Length > 15)
            {
                e.Handled = true; 
                MessageBox.Show("Please enter a valid phone number (up to 15 digits).");
            }

        }

        private void tbNomUsuario_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            string pattern = @"^[A-Za-z0-9_]+$";


            if (!Regex.IsMatch(e.Text, pattern))
            {
                e.Handled = true;
                MessageBox.Show("Only alphanumeric characters are allowed.");
            }
        }

        private void btRestablecer_Click(object sender, RoutedEventArgs e)
        {
            string tempPassword;
            string query;

            if (cbRestablecerBaja.SelectedValue != null)
            {
                tempPassword = random.Next(100000000, 1000000000).ToString();

                query = $"UPDATE usuario set hashedPassword='{dbManager.HashPassword(tempPassword)}'," +
                    $"tempPassword=1 WHERE nomUsuario='{cbRestablecerBaja.SelectedValue}'";
                MessageBox.Show("Restablecimiento exitoso \nInformación ha sido copiada para que se propocione al usuario");
                Clipboard.SetText($"Iniciar sesión como: \n\tUSUARIO: {cbRestablecerBaja.SelectedValue}\n\t CONTRASEÑA: {tempPassword}");

                dbManager.makeQuery(query, true);
            }
            
        }

        private void btBaja_Click(object sender, RoutedEventArgs e)
        {
            if (cbRestablecerBaja.SelectedValue != null)
            {
                dbManager.makeQuery($"DELETE FROM usuario where nomUsuario='{cbRestablecerBaja.SelectedValue}'");
                MessageBox.Show($"Baja de {cbRestablecerBaja.SelectedValue} exitosa");
            }
        }
        private void fetchPermissions()
        {
            stPermisos.Visibility = Visibility.Visible;
            res = dbManager.makeQuery($"select idPermiso from permiso where nomUsuario='{cbPermisos.SelectedValue}'");
            permisosSel = new List<int>();

            foreach (CheckBox chb in permisos)
            {
                chb.IsChecked = false;
            }
            foreach (var item in res)
            {
                permisos[Int16.Parse(item["idPermiso"])].IsChecked = true;
                permisosSel.Add(Convert.ToInt32(item["idPermiso"]));
            }

        }
        private void cbPermisos_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            fetchPermissions();
        }

        private void btPermisos_Click(object sender, RoutedEventArgs e)
        {
            for (int i = 0; i < permisos.Length; i++)
            {

                if (permisos[i].IsChecked == true && !permisosSel.Contains(i))
                {
                    dbManager.makeQuery($"INSERT INTO permiso(idPermiso, nomUsuario) VALUES({ i}, '{cbPermisos.SelectedValue}')", true);
                }
                if (permisos[i].IsChecked == false && permisosSel.Contains(i))
                {
                    dbManager.makeQuery($"DELETE FROM permiso WHERE idPermiso={i.ToString()} AND nomUsuario='{cbPermisos.SelectedValue}'", true);
                }
                
            }
            cbPermisos.SelectedIndex = -1;
            stPermisos.Visibility = Visibility.Collapsed;
        }
    }
}
