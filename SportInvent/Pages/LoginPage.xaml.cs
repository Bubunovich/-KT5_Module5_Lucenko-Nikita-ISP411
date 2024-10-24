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

namespace SportInvent.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            try
            {
                if (string.IsNullOrEmpty(LoginTextBox.Text))
                {
                    errors.AppendLine("Заполните логин");
                }
                if (string.IsNullOrEmpty(LoginPassworBox.Password))
                {
                    errors.AppendLine("Заполните Пароль");
                }
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                if (Data.KT5Entities1.GetContext().User.Any(d => d.Login == LoginTextBox.Text && d.Password == LoginPassworBox.Password))
                {
                    MessageBox.Show("Успех!", "Вы успешно вошли!", MessageBoxButton.OK, MessageBoxImage.Information);
                    Classes.Manager.MainFrame.Navigate(new Pages.UserPage());
                }
                else
                {
                    MessageBox.Show("Ошибка", "Неправильный логин/пароль", MessageBoxButton.OK, MessageBoxImage.Error);
                }


            }
            catch(Exception ex)
            {
                MessageBox.Show("Ошибка", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
    }
}
