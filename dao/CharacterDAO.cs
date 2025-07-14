using MySql.Data.MySqlClient;
using RPGame.mapping;
using RPGame.utilitary;
using RPGame.Interface;

namespace RPGame.dao
{
    internal class CharacterDAO : IcharacterDAO<Character>
    {
        public void Create(Character character, User user)
        {
            try
            {
                string insert = "INSERT INTO personagem (fk_id_usuario, nome, genero, raca, classe) " +
                    "VALUES (@user_id, @name, @gender, @race, @class)";
                MySqlCommand command = new MySqlCommand(insert, Connection.Connect());

                command.Parameters.AddWithValue("@user_id", user._id);
                command.Parameters.AddWithValue("@name", character._name);
                command.Parameters.AddWithValue("@gender", character._gender);
                command.Parameters.AddWithValue("@race", character._race);
                command.Parameters.AddWithValue("@class", character._class);
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
        public List<Character> GetByUser(User user)
        {

            try
            {
                List<Character> characters = new List<Character>();

                string query = "SELECT * FROM personagem " +
                    "WHERE personagem.fk_id_usuario = @user_id";
                MySqlCommand command = new MySqlCommand(query, Connection.Connect());

                UserDAO userDAO = new UserDAO();
                int userId = userDAO.GetIdByLicense(user._license);
                command.Parameters.AddWithValue("@user_id", userId);

                using (MySqlDataReader dataReader = command.ExecuteReader())
                {
                    while (dataReader.Read())
                    {
                        Character character = new Character();
                        character._id = dataReader.GetInt32("id_personagem");
                        character._fkUser = dataReader.GetInt32("fk_id_usuario");
                        character._user = user;
                        character._name = dataReader.GetString("nome");
                        character._gender = dataReader.GetChar("genero");
                        character._race = dataReader.GetString("raca");
                        character._class = dataReader.GetString("classe");
                        character._level = dataReader.GetInt32("nivel");
                        character._experience = dataReader.GetInt32("experiencia");
                        character._money = dataReader.GetInt32("dinheiro");
                        character._fkArea = dataReader.GetInt32("fk_id_localidade");

                        characters.Add(character);
                    }
                }
                return characters;
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
        public void DeleteById(int characterId)
        {
            try
            {
                string delete = "DELETE FROM personagem WHERE id_personagem = @character_id";
                MySqlCommand command = new MySqlCommand(delete, Connection.Connect());
                command.Parameters.AddWithValue("@character_id", characterId);
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
