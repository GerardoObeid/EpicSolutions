using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Windows;
using System.Windows.Controls;

namespace EpicSolutions
{
    public class dbFunctions
    {
        SqlConnection conn;
        public  dbFunctions()
        {
            conn = agregarConexion();
        }

        public SqlConnection agregarConexion()
        {
            SqlConnection cnn;
            try
            {
                cnn = new SqlConnection("Data Source=DESKTOP-L5JL3C0\\SQLEXPRESS01;Initial Catalog=db_servicio;Integrated Security=True");
                cnn.Open();
            }
            catch (Exception ex)
            {
                cnn = null;
                MessageBox.Show("no se pudo conectar" + ex);
            }
            return cnn;
        }

        public string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                // Compute hash from the password string
                byte[] passwordBytes = Encoding.UTF8.GetBytes(password);
                byte[] hashBytes = sha256.ComputeHash(passwordBytes);

                // Convert the byte array to a hexadecimal string
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    builder.Append(hashBytes[i].ToString("x2"));
                }

                return builder.ToString();
            }
        }
        public bool VerifyPassword(string password, string hashedPassword)
        {
            string newHash = HashPassword(password);
            return string.Equals(newHash, hashedPassword, StringComparison.OrdinalIgnoreCase);
        }
        public string makeQuery(string query)
        {
            string res = "not_found";
            SqlDataReader read;
            SqlCommand cmd;

            cmd = new SqlCommand(query, conn);
            read = cmd.ExecuteReader();
            if (read.Read())
            {
                res = read.GetString(0);
            }
            read.Close();
            return res;
        }
        public int handleLogin(String user, String pwd)
        {
            int ans = 0;
            string query = $"SELECT hashedPassword from usuario where correo='{user}'";
            string qres;

            try
            {
                qres = makeQuery(query);
                if (qres == "not_found")
                {
                    ans = 3;
                }
                else
                {
                    if (VerifyPassword(pwd, qres))
                    {
                        ans = 1;
                    }
                    else
                    {
                        ans = 2;
                    }
                }
               

            }
            catch (Exception e)
            {
                MessageBox.Show($"Error {e}");
            }
            return ans;
        }
       
    }
}
