using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Collections.Generic;

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
        public List<Dictionary<string, string>> makeQuery(string query, bool isInsert = false)
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            List<Dictionary<string, string>> resultList = new List<Dictionary<string, string>>();

            if (isInsert)
            {
                Dictionary<string, string> resultDictionary = new Dictionary<string, string>();
                resultDictionary["RowsAffected"] = "None";

                try
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    resultDictionary["RowsAffected"] = rowsAffected.ToString();
                }
                catch (Exception ex)
                {
                    resultDictionary["RowsAffected"] = ex.ToString();
                }

                resultList.Add(resultDictionary);
            }
            else
            {
                SqlDataReader read = cmd.ExecuteReader();

                while (read.Read())
                {
                    Dictionary<string, string> resultDictionary = new Dictionary<string, string>();
                    for (int i = 0; i < read.FieldCount; i++)
                    {
                        string columnName = read.GetName(i);
                        string columnValue = read[i].ToString();
                        resultDictionary[columnName] = columnValue;
                    }
                    resultList.Add(resultDictionary);
                }

                read.Close();
            }

            return resultList;
        }

        public void close()
        {
            conn.Close();
        }
        public int handleLogin(String user, String pwd)
        {
            int ans = 0;
            string query = $"SELECT hashedPassword from usuario where nomUsuario='{user}'";
            List<Dictionary<string, string>> queryResult;


            try
            {
                queryResult = makeQuery(query);

                if (queryResult.Count == 0)
                {
                    ans = 3; // Usuario no encontrado
                }
                else
                {
                    string hashedPassword = queryResult[0].GetValueOrDefault("hashedPassword");

                    if (VerifyPassword(pwd, hashedPassword))
                    {
                        ans = 1; // Contraseña válida
                    }
                    else
                    {
                        ans = 2; // Contraseña incorrecta
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
