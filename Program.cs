using RPGame.dao;
using RPGame.mapping;

namespace RPGame
{
    internal class Program
    {
        static void Main(string[] args)
        {
            TitleScreen();
        }
        static void TitleScreen()
        {
            Console.Clear();
            Console.WriteLine("Um Conto de Miséria: A Menina de Mármore\n\n\n");
            Console.WriteLine("Pressione qualquer tecla para iniciar\n\n\n");
            Console.WriteLine("Guilherme Tavares  2025  Todos os direitos reservados\n\n");
            Console.Write(" . . .");
            Console.ReadKey();
            LicenseMenu();
        }
        static void LicenseMenu()
        {
            string license;
            bool validLicense = true;

            do
            {
                switch (validLicense)
                {
                    case false:
                        {
                            Console.Clear();
                            Console.WriteLine("Por favor, insira o número da sua licença.\n");
                            Console.WriteLine("O número da licença consiste em uma sequência de 15 caracteres numéricos.\n");
                            Console.Write("Licença: ");
                            license = Console.ReadLine();
                            try
                            {
                                validLicense = User.ValidateLicense(license);
                            }
                            catch (Exception ex)
                            {
                                validLicense = false;
                                Console.Clear();
                                Console.Write(ex.Message + "\n\nPressione qualquer tecla para continuar . . .");
                                Console.ReadKey();
                            }
                            break;
                        }
                    default:
                        {
                            Console.Clear();
                            Console.WriteLine("Por favor, insira o número da sua licença.\n");
                            Console.Write("Licença: ");
                            license = Console.ReadLine();
                            try
                            {
                                validLicense = User.ValidateLicense(license);
                            }
                            catch (Exception ex)
                            {
                                validLicense = false;
                                Console.Clear();
                                Console.Write(ex.Message + "\n\nPressione qualquer tecla para continuar . . .");
                                Console.ReadKey();
                            }
                            break;
                        }
                }
            } while (validLicense == false);

            UserDAO userDAO = new UserDAO();
            bool isLicenseAvailable = userDAO.VerifyLicense(license);

            switch (isLicenseAvailable)
            {
                case false:
                    {
                        QueriedUserScreen(license);
                        break;
                    }
                default:
                    {
                        CreateUserScreen(license);
                        break;
                    }
            }
        }
        static void CreateUserScreen(string license)
        {
            User user = new User();
            user._license = license;
            string firstName, lastName;

            bool invalidName;
            do
            {
                invalidName = false;
                Console.Clear();
                Console.WriteLine("Por favor, insira o seu primeiro nome para iniciar o registro.\n");
                Console.Write("Primeiro nome: ");
                try
                {
                    firstName = Console.ReadLine();
                    User.ValidateFirstName(firstName);
                    firstName = char.ToUpper(firstName[0]) + firstName.Substring(1).ToLower();
                    user.Name = firstName;
                }
                catch (Exception ex)
                {
                    invalidName = true;
                    Console.Clear();
                    Console.Write(ex.Message + "\n\nPressione qualquer tecla para continuar . . .");
                    Console.ReadKey();
                }
            } while (invalidName);
            do
            {
                invalidName = false;
                Console.Clear();
                Console.WriteLine("Finalize o registro inserindo o seu último nome.\n");
                Console.Write("Último nome: ");
                try
                {
                    lastName = Console.ReadLine();
                    User.ValidateLastName(lastName);
                    if (lastName.Any(character => character == ' '))
                    {
                        int spaceIndex = lastName.IndexOf(' ');

                        lastName = lastName.Remove(spaceIndex + 1) + char.ToUpper(lastName[spaceIndex + 1]) + lastName.Substring(spaceIndex + 2).ToLower();
                        user.Name += " " + lastName;

                    }
                    else
                    {
                        lastName = char.ToUpper(lastName[0]) + lastName.Substring(1).ToLower();
                        user.Name += " " + lastName;
                    }

                }
                catch (Exception ex)
                {
                    invalidName = true;
                    Console.Clear();
                    Console.Write(ex.Message + "\n\nPressione qualquer tecla para continuar . . .");
                    Console.ReadKey();
                }
            } while (invalidName);

            string username = user.Name;
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine($"{username}, certo?\n");
                Console.WriteLine("1  Sim");
                Console.WriteLine("2  Não\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            UserDAO userDAO = new UserDAO();
                            userDAO.Create(user);
                            FirstQueriedUserScreen(license);

                            break;
                        }
                    case "2":
                        {
                            User.ClearName(user);
                            CreateUserScreen(license);

                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();

                            break;
                        }
                }
            } while (invalidOption);
        }
        static void FirstQueriedUserScreen(string license)
        {
            UserDAO userDAO = new UserDAO();
            User user = userDAO.GetByLicense(license);

            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine($"Bem-vindo(a), {user.Name}.\n");
                Console.WriteLine("1  Novo Jogo");
                Console.WriteLine("2  Opções");
                Console.WriteLine("3  Sair\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();
                
                switch (userAction)
                {
                    case "1":
                        {
                            NewCharacterIntro();
                            CreateCharacterScreen(user);
                            break;
                        }
                    case "2":
                        {
                            UserOptionsMenu(user);
                            break;
                        }
                    case "3":
                        {
                            TitleScreen();
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);    
        }
        static void QueriedUserScreen(string license)
        {
            UserDAO userDAO = new UserDAO();
            User user = userDAO.GetByLicense(license);
            CharacterDAO characterDAO = new CharacterDAO();
            List<Character> characters = characterDAO.GetByUser(user);

            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine($"Bem-vindo(a) de volta, {user.Name}.\n");
                if (characters.Count == 0)
                {
                    Console.WriteLine("1  Novo Jogo");
                    Console.WriteLine("2  Opções");
                    Console.WriteLine("3  Sair\n");
                    Console.Write("Ação: ");
                    userAction = Console.ReadLine();

                    switch (userAction)
                    {
                        case "1":
                            {
                                NewCharacterIntro();
                                CreateCharacterScreen(user);
                                break;
                            }
                        case "2":
                            {
                                UserOptionsMenu(user);
                                break;
                            }
                        case "3":
                            {
                                TitleScreen();
                                break;
                            }
                        default:
                            {
                                invalidOption = InvalidOption();
                                break;
                            }
                    }
                }
                else
                {
                    Console.WriteLine("1  Carregar Jogo");
                    Console.WriteLine("2  Novo Jogo");
                    Console.WriteLine("3  Opções");
                    Console.WriteLine("4  Sair\n");
                    Console.Write("Ação: ");
                    userAction = Console.ReadLine();

                    switch (userAction)
                    {
                        case "1":
                            {
                                LoadGameScreen(user);
                                break;
                            }
                        case "2":
                            {
                                NewCharacterIntro();
                                CreateCharacterScreen(user);
                                break;
                            }
                        case "3":
                            {
                                UserOptionsMenu(user);
                                break;
                            }
                        case "4":
                            {
                                TitleScreen();
                                break;
                            }
                        default:
                            {
                                invalidOption = InvalidOption();
                                break;
                            }
                    }
                }
                
            } while (invalidOption);
        }
        static void UserOptionsMenu(User user)
        {
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine($"Configuração de Usuário\n");
                Console.WriteLine("1  Editar nome");
                Console.WriteLine("2  Remover licença");
                Console.WriteLine("3  Voltar\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            UserEditName(user);
                            break;
                        }
                    case "2":
                        {
                            UserRemoveLicense(user);
                            break;
                        }
                    case "3":
                        {
                            QueriedUserScreen(user._license);
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();

                            break;
                        }
                }
            } while (invalidOption);
        }
        static void UserEditName(User user)
        {
            string firstName, lastName;
            bool invalidName;

            do
            {
                invalidName = false;
                Console.Clear();
                Console.WriteLine("Por favor, insira o seu primeiro nome para iniciar a edição.\n");
                Console.Write("Primeiro nome: ");
                try
                {
                    firstName = Console.ReadLine();
                    User.ValidateFirstName(firstName);
                    firstName = char.ToUpper(firstName[0]) + firstName.Substring(1).ToLower();
                    user.Name = firstName;
                }
                catch (Exception ex)
                {
                    invalidName = true;
                    Console.Clear();
                    Console.Write(ex.Message + "\n\nPressione qualquer tecla para continuar . . .");
                    Console.ReadKey();
                }
            } while (invalidName);
            do
            {
                invalidName = false;
                Console.Clear();
                Console.WriteLine("Finalize a edição inserindo o seu último nome.\n");
                Console.Write("Último nome: ");
                try
                {
                    lastName = Console.ReadLine();
                    User.ValidateLastName(lastName);
                    if (lastName.Any(character => character == ' '))
                    {
                        int spaceIndex = lastName.IndexOf(' ');
                        lastName = lastName.Remove(spaceIndex + 1) + char.ToUpper(lastName[spaceIndex + 1]) + lastName.Substring(spaceIndex + 2).ToLower();
                        user.Name += " " + lastName;
                    }
                    else
                    {
                        lastName = char.ToUpper(lastName[0]) + lastName.Substring(1).ToLower();
                        user.Name += " " + lastName;
                    }
                }
                catch (Exception ex)
                {
                    invalidName = true;
                    Console.Clear();
                    Console.Write(ex.Message + "\n\nPressione qualquer tecla para continuar . . .");
                    Console.ReadKey();
                }
            } while (invalidName);

            string username = user.Name;
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine($"{username}, certo?\n");
                Console.WriteLine("1  Sim");
                Console.WriteLine("2  Não\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            UserDAO userDAO = new UserDAO();
                            userDAO.UpdateName(user);
                            UserEditNameSuccess();
                            UserOptionsMenu(user);

                            break;
                        }
                    case "2":
                        {
                            User.ClearName(user);
                            UserEditName(user);

                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();

                            break;
                        }
                }
            } while (invalidOption);
        }
        static void UserEditNameSuccess()
        {
            Console.Clear();
            Console.WriteLine("Nome atualizado com sucesso!\n");
            Console.Write("Pressione qualquer tecla para continuar . . .");
            Console.ReadKey();
        }
        static void UserRemoveLicense(User user)
        {
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine($"Você tem certeza que deseja remover sua licença, {user.Name}?");
                Console.WriteLine("Essa ação apagará todos os dados e não poderá ser desfeita.\n");
                Console.WriteLine("1  Sim");
                Console.WriteLine("2  Não\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();
                switch (userAction)
                {
                    case "1":
                        {
                            UserDAO userDAO = new UserDAO();
                            userDAO.DeleteByLicense(user._license);
                            UserRemoveLicenseSuccess();
                            TitleScreen();
                            break;
                        }
                    case "2":
                        {
                            UserOptionsMenu(user);
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);
        }
        static void UserRemoveLicenseSuccess()
        {
            Console.Clear();
            Console.WriteLine("Licensa removida com sucesso!");
            Console.WriteLine("Dados de usuário apagados.\n");
            Console.Write("Pressione qualquer tecla para continuar . . .");
            Console.ReadKey();
        }
        static void CreateCharacterScreen(User user)
        {
            Character character = new Character();
            character._fkUser = user._id;
            character._user = user;

            NewCharacterGender(character);
            NewCharacterRace(character);
            NewCharacterClass(character);
            NewCharacterName(character);

            string characterGender = character._gender.ToString();
            if (characterGender == "m")
                characterGender = "Masculino";
            else
                characterGender = "Feminino";
            string characterRace = character._race;
            string characterClass = character._class;
            string characterName = character._name;

            Console.Clear();
            Console.WriteLine("Você enxerga o seu reflexo.\n");
            Console.WriteLine("Nome: " + characterName);
            Console.WriteLine("Gênero: " + characterGender);
            Console.WriteLine("Raça: " + characterRace);
            Console.WriteLine("Classe: " + characterClass);
            Console.WriteLine("");
            Console.Write(" . . .");
            Console.ReadKey();

            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine($"{characterName}, a água lhe mostra a verdade?\n");
                Console.WriteLine("1  Sim");
                Console.WriteLine("2  Não\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            CharacterDAO characterDAO = new CharacterDAO();
                            characterDAO.Create(character, user);
                            UnderConstruction();
                            QueriedUserScreen(user._license);
                            break;
                        }
                    case "2":
                        {
                            CreateCharacterScreen(user);
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);
        }
        static void NewCharacterIntro()
        {
            Console.Clear();
            Console.WriteLine("Um toque fresco esfria a sua mão enquanto\n" +
                "os seus olhos descobrem movimento.\n");
            Console.Write(" . . .");
            Console.ReadKey();
            Console.Clear();
            Console.WriteLine("A água calma dança como se buscasse capturar\n" +
                "a visão turva de um pobre moribundo.\n");
            Console.Write(" . . .");
            Console.ReadKey();
            Console.Clear();
            Console.WriteLine("Seu coração bate.");
            Console.WriteLine("Você respira.\n");
            Console.Write(" . . .");
            Console.ReadKey();
            Console.Clear();
            Console.WriteLine("Você ergue a sua mão, recusando o toque molhado.\n\n" +
                "Aproximando o membro do seu rosto, você encontra\n" +
                "apoio para cobrar forças do seu corpo.\n\n" +
                "A água que molhou sua mão é roubada pela areia.\n");
            Console.Write(" . . .");
            Console.ReadKey();
            Console.Clear();
            Console.WriteLine("Você levanta o seu tronco com a ajuda dos braços.\n" +
                "Seus joelhos se dobram para retrair suas pernas.\n\n" +
                "No lado da mão tocada pela água, você comanda que o pé\n" +
                "cumpra a parte dele do acordo, ganhando equilíbrio.\n\n" +
                "Lentamente, você se levanta.\n" +
                "Nenhuma dor aflige o seu corpo.\n");
            Console.Write(" . . .");
            Console.ReadKey();
        }
        static void NewCharacterGender(Character character)
        {
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine("A água do rio que você encara devolve o reflexo:\n");
                Console.WriteLine("1  De um homem.");
                Console.WriteLine("2  De uma mulher.\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            character._gender = 'm';
                            break;
                        }
                    case "2":
                        {
                            character._gender = 'f';
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);
        }
        static void NewCharacterRace(Character character)
        {
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine("Observando a imagem ondulada, você percebe:\n");
                Console.WriteLine("1  Um rosto manchado por sujeiras.");
                Console.WriteLine("2  Orelhas longas e pontudas.");
                Console.WriteLine("3  Um nariz e uma boca atraentes.");
                Console.WriteLine("4  Que a sua cabeça não está\n" +
                    "   tão distante dos seus pés.\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            character._race = "Humano";
                            break;
                        }
                    case "2":
                        {
                            character._race = "Elfo";
                            break;
                        }
                    case "3":
                        {
                            character._race = "Meio-elfo";
                            break;
                        }
                    case "4":
                        {
                            character._race = "Anão";
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);
        }
        static void NewCharacterClass(Character character)
        {
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine("Seus olhos se fixam no corpo, que revela:\n");
                Console.WriteLine("1  Uma lâmina embainhada no cinto da calça dura.");
                Console.WriteLine("2  Um arco longo adentrando pelo ombro.");
                Console.WriteLine("3  Uma armadura feita de metal.");
                Console.WriteLine("4  Um capuz azul com tiras de veludo.");
                Console.WriteLine("5  Vestes brancas e ornamentos dourados.");
                Console.WriteLine("6  Penas cinzas presas ao tecido da roupa.");
                Console.WriteLine("7  Couro escuro e leve, com um cinto confiável.\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            character._class = "Guerreiro";
                            break;
                        }
                    case "2":
                        {
                            character._class = "Caçador";
                            break;
                        }
                    case "3":
                        {
                            character._class = "Cavaleiro";
                            break;
                        }
                    case "4":
                        {
                            character._class = "Feiticeiro";
                            break;
                        }
                    case "5":
                        {
                            character._class = "Clérigo";
                            break;
                        }
                    case "6":
                        {
                            character._class = "Piromante";
                            break;
                        }
                    case "7":
                        {
                            character._class = "Ladrão";
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);
        }
        static void NewCharacterName(Character character)
        {
            string name;
            bool invalidName;
            do
            {
                invalidName = false;
                Console.Clear();
                Console.WriteLine("A sua mente entra em um invólucro de confusão,\n" +
                    "os pensamentos recobram um nome.\n");
                Console.Write("Nome: ");
                try
                {
                    name = Console.ReadLine();
                    Character.ValidateName(name);
                    character._name = name;
                }
                catch (Exception ex)
                {
                    invalidName = true;
                    Console.Clear();
                    Console.Write(ex.Message + "\n\nPressione qualquer tecla para continuar . . .");
                    Console.ReadKey();
                }
            } while (invalidName);
        }
        static void LoadGameScreen(User user)
        {
            CharacterDAO characterDAO = new CharacterDAO();
            List<Character> characters = characterDAO.GetByUser(user);

            if (characters.Count == 0)
            {
                Console.Clear();
                Console.WriteLine("Seleção de Personagem\n");
                Console.WriteLine("Nenhum personagem encontrado.\n");
                Console.Write("Pressione qualquer tecla para continuar . . .");
                Console.ReadKey();
                QueriedUserScreen(user._license);
                return;
            }
  
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine("Seleção de Personagem\n");

                for (int i = 0; i < characters.Count; i++)
                {
                    Console.WriteLine($"{i + 1}  Nome: {characters[i]._name}");
                    Console.WriteLine($"   Nível: {characters[i]._level}");
                    Console.WriteLine();
                }
                Console.WriteLine("0  Voltar\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "0":
                        {
                            QueriedUserScreen(user._license);
                            break;
                        }
                    default:
                        {
                            if (int.TryParse(userAction, out int index) && index > 0 && index <= characters.Count)
                            {
                                Character selectedCharacter = characters[index - 1];
                                SelectedCharacterScreen(selectedCharacter);
                            }
                            else
                            {
                                invalidOption = InvalidOption();
                            }
                            break;
                        }
                }
            } while (invalidOption);
        }
        static void SelectedCharacterScreen(Character character)
        {
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine("Personagem Selecionado\n");
                Console.WriteLine($"Nome: {character._name}");
                string characterGender = character._gender.ToString();
                if (characterGender == "m")
                    characterGender = "Masculino";
                else
                    characterGender = "Feminino";
                Console.WriteLine($"Gênero: {characterGender}");
                Console.WriteLine($"Raça: {character._race}");
                Console.WriteLine($"Classe: {character._class}");
                Console.WriteLine($"Nível: {character._level}");
                Console.WriteLine($"Experiência: {character._experience}");
                Console.WriteLine($"Dinheiro: {character._money}\n");
                Console.WriteLine("1  Carregar");
                Console.WriteLine("2  Excluir");
                Console.WriteLine("3  Voltar\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            UnderConstruction();
                            QueriedUserScreen(character._user._license);
                            break;
                        }
                    case "2":
                        {
                            CharacterDeleteScreen(character);
                            break;
                        }
                    case "3":
                        {
                            LoadGameScreen(character._user);
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);
        }
        static void CharacterDeleteScreen(Character character)
        {
            string userAction;
            bool invalidOption;
            do
            {
                invalidOption = false;
                Console.Clear();
                Console.WriteLine("Tem certeza que deseja apagar o personagem?");
                Console.WriteLine("Essa ação não poderá ser desfeita.\n");
                Console.WriteLine("1  Sim");
                Console.WriteLine("2  Não\n");
                Console.Write("Ação: ");
                userAction = Console.ReadLine();

                switch (userAction)
                {
                    case "1":
                        {
                            CharacterDAO characterDAO = new CharacterDAO();
                            characterDAO.DeleteById(character._id);
                            CharacterDeleteSuccess();
                            LoadGameScreen(character._user);
                            break;
                        }
                    case "2":
                        {
                            SelectedCharacterScreen(character);
                            break;
                        }
                    default:
                        {
                            invalidOption = InvalidOption();
                            break;
                        }
                }
            } while (invalidOption);
            
            Console.Write("Pressione qualquer tecla para continuar . . .");
            Console.ReadKey();
        }
        static void CharacterDeleteSuccess()
        {
            Console.Clear();
            Console.WriteLine("Personagem excluído com sucesso!\n");
            Console.Write("Pressione qualquer tecla para continuar . . .");
            Console.ReadKey();
        }
        static bool InvalidOption()
        {
            Console.Clear();
            Console.WriteLine("Opção inválida.\n");
            Console.Write("Pressione qualquer tecla para continuar . . .");
            Console.ReadKey();
            return true;
        }
        static void UnderConstruction()
        {
            Console.Clear();
            Console.WriteLine("Obrigado por testar.");
            Console.WriteLine("O jogo ainda está em desenvolvimento.\n");
            Console.Write("Pressione qualquer tecla para continuar . . .");
            Console.ReadKey();
        }
    }
}
