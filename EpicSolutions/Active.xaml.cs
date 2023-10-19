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
        }

        private void btRegistrar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btHome_Click(object sender, RoutedEventArgs e)
        {
            Dashboard db = new Dashboard(user, dbManager);
            db.Show();
            this.Hide();
        }
    }
}
