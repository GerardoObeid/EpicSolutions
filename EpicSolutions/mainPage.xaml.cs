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
        dbFunctions dbManager;
        string user;
        public mainPage(string user, dbFunctions dbManager)
        {
            this.dbManager = dbManager;
            this.user = user;

            InitializeComponent();
            lbUserLoggedIn.Content = $"Bienvenido: {user}";
            
        }

        private void btSeguimiento_Click(object sender, RoutedEventArgs e)
        {
            FollowUp fp = new FollowUp(dbManager);
            fp.Show();  
        }

        private void btRegistrar_Click(object sender, RoutedEventArgs e)
        {
            Register reg = new Register(user, dbManager);
            reg.Show();
        }

        private void btLogOut_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw = new MainWindow();
            mw.Show();
            this.Hide();    
        }

        //Pedidos button
        private void btRegistrar_Copy_Click(object sender, RoutedEventArgs e)
        {
            Active ac = new Active();   
            ac.Show();
        }

        private void btProveedores_Click(object sender, RoutedEventArgs e)
        {
            Proveedores p = new Proveedores(dbManager);
            p.Show  ();
        }

        private void btDasboard_Click(object sender, RoutedEventArgs e)
        {
            Dashboard db = new Dashboard(dbManager);
            db.Show();
        }
    }
}
