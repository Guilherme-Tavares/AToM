using MySql.Data.MySqlClient;

namespace RPGame.utilitary
{
    internal class Connection
    {
        public static MySqlConnection connection;

        public static MySqlConnection Connect()
        {
            try
            {
                string connectionString = "server=localhost;port=3306;uid=root;pwd=root;database=rpg_game;";

                connection = new MySqlConnection(connectionString);
                connection.Open();
                return connection;
            }
            catch (Exception ex)
            {
                throw new Exception("Connection failed." + ex.Message);
            }
        }
        public static void CloseConnection()
        {
            connection.Close();
        }
    }
}
