using MySql.Data.MySqlClient;
using RPGame.mapping;
using RPGame.utilitary;

namespace RPGame.dao
{
    internal class UserDAO
    {
        public static void Create(User user)
        {
            try
            {

                string insert = "INSERT INTO usuario (nome, licenca) " +
                    "VALUES (@name, @license)";
                MySqlCommand command = new MySqlCommand(insert, Connection.Connect());

                command.Parameters.AddWithValue("@name", user.Name);
                command.Parameters.AddWithValue("@license", user._license);
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Connection.CloseConnection();
            }
        }
        public void Read(User user)
        {

        }
        public void Update(User user)
        {

        }
        public void Delete(User user)
        {

        }
        public static List<User> GetAll()
        {
            try
            {
                List<User> users = new List<User>();
                string query = "SELECT * FROM usuario";
                MySqlCommand command = new MySqlCommand(query, Connection.Connect());

                using (MySqlDataReader dataReader = command.ExecuteReader())
                {
                    while (dataReader.Read())
                    {
                        User user = new User();
                        user._id = dataReader.GetInt32("id_usuario");
                        user.Name = dataReader.GetString("nome");
                        user._license = dataReader.GetString("licenca");

                        users.Add(user);
                    }
                }
                return users;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Connection.CloseConnection();
            }  
        }
        public static int GetIdByLicense(string license)
        {
            try
            {
                string query = "SELECT id_usuario FROM usuario WHERE licenca = @license";
                MySqlCommand command = new MySqlCommand(query, Connection.Connect());

                command.Parameters.AddWithValue("@license", license);

                int id = 0;
                using (MySqlDataReader dataReader = command.ExecuteReader())
                {
                    if (dataReader.Read())
                    {
                        id = dataReader.GetInt32("id_usuario");
                    }
                }
                return id;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Connection.CloseConnection();
            }
        }
        public static bool VerifyLicense(string license)
        {
            try
            {
                List<User> users = UserDAO.GetAll();
                bool isAvailable = true;

                foreach (User user in users)
                {
                    if (user._license == license)
                        isAvailable = false;
                }

                return isAvailable;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Connection.CloseConnection();
            }
        }
        public static User GetByLicense(string license)
        {
            try
            {
                bool isAvailable = VerifyLicense(license);
                User user = new User();

                if (isAvailable)
                    throw new Exception("Licença não registrada.");

                string query = "SELECT * FROM usuario WHERE licenca = @license";

                MySqlCommand command = new MySqlCommand(query, Connection.Connect());
                command.Parameters.AddWithValue("@license", license);

                using (MySqlDataReader dataReader = command.ExecuteReader())
                {
                    while (dataReader.Read())
                    {
                        user._id = dataReader.GetInt32("id_usuario");
                        user.Name = dataReader.GetString("nome");
                        user._license = dataReader.GetString("licenca");
                    }
                }
                return user;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Connection.CloseConnection();
            }
        }
        public static void UpdateName(User user)
        {
            try
            {
                string insert = "UPDATE usuario SET nome = @name " +
                    "WHERE usuario.licenca = @license";
                MySqlCommand command = new MySqlCommand(insert, Connection.Connect());

                command.Parameters.AddWithValue("@name", user.Name);
                command.Parameters.AddWithValue("@license", user._license);
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Connection.CloseConnection();
            }
        }
        public static void DeleteByLicense(string license)
        {
            try
            {
                string insert = "DELETE FROM usuario " +
                    "WHERE usuario.licenca = @license";
                MySqlCommand command = new MySqlCommand(insert, Connection.Connect());

                command.Parameters.AddWithValue("@license", license);
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                Connection.CloseConnection();
            }
        }
    }
}
