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
    /// Lógica de interacción para mainPage.xaml
    /// </summary>
    public partial class mainPage : Window
    {
        public mainPage(string user)
        {
            InitializeComponent();
            lbUserLoggedIn.Content = $"Bienvenido: {user}";
        }

        private void btSeguimiento_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btSolicitudes_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btRegistrar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btRegistrar_Copy_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btLogOut_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw = new MainWindow();
            mw.Show();
            this.Hide();    
        }

     
    }
}
