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
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace EpicSolutions
{

    public partial class MainWindow : Window
    {
        dbFunctions dataBaseManager = new dbFunctions();
        public MainWindow()
        {
            InitializeComponent();
            

    }
        private void ShowPassword_Checked(object sender, RoutedEventArgs e)
        {
            tbpasswordText.Text = tbpassword.Password;
            tbpassword.Visibility = Visibility.Collapsed;
            tbpasswordText.Visibility = Visibility.Visible;
        }

        private void ShowPassword_Unchecked(object sender, RoutedEventArgs e)
        {
            tbpassword.Password = tbpasswordText.Text;
            tbpasswordText.Visibility = Visibility.Collapsed;
            tbpassword.Visibility = Visibility.Visible;
        }

        private void btLogin_Click(object sender, RoutedEventArgs e)
        {
            int login = dataBaseManager.handleLogin(tbUsuario.Text, tbpassword.Password);
            if (login == 0)
            {
                MessageBox.Show("Error al conectarse a la base de datos. \nContactar administrador");
            }
            else if(login == 3)
            {
                MessageBox.Show("EL ususario ingresado no existe");
            }
            else if (login == 2)
            {
                MessageBox.Show("Contraseña Incorrecta");
            }
            else
            {
                mainPage mp = new mainPage(tbUsuario.Text, dataBaseManager);
                mp.Show();
                this.Hide();
            }

        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }
    }
}
