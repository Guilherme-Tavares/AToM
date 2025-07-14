namespace RPGame.mapping
{
    internal class User
    {
        public int _id { get; set; }
        private string _name;
        public string Name {
            get
            {
                return _name;
            } set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 2)
                {
                    throw new Exception("Nome inválido.");
                }
                _name = value;    
            } 
        }
        public string _license { get; set; }
        public static bool ValidateLicense(string license)
        {
            bool onlyNumbers = true, isValid = false;

            foreach (char c in license)
            {
                if (c < '0' || c > '9')
                    onlyNumbers = false;
            }

            if (onlyNumbers == true && license.Length == 15)
                isValid = true;
            else
                throw new Exception("Licença inválida.");

            return isValid;
        }
        public static void ValidateFirstName(string name)
        {
            if (name.Any(character => !char.IsLetter(character)) || name.Length < 2)
            {
                throw new Exception("Nome inválido.");
            }
        }
        public static void ValidateLastName(string name)
        {
            if (name.Any(character => !char.IsLetter(character) && character != ' ') || name.Length < 2)
            {
                throw new Exception("Nome inválido.");
            }

            int whiteSpace = 0, spaceIndex = name.IndexOf(" ");

            foreach (char c in name)
            {
                if (c == ' ')
                    whiteSpace++;
            }
            if (whiteSpace > 1)
            {
                throw new Exception("Nome inválido.");
            }
            if (spaceIndex + 1 > name.Length || spaceIndex == 0 || !char.IsLetter(name[spaceIndex + 1]))
            {
                throw new Exception("Nome inválido.");
            }
        }
        public static void ClearName(User user)
        {
            user._name = "";
        }
    }
}
