namespace RPGame.mapping
{
    internal class Character
    {
        public int _id { get; set; }
        public int _fkUser { get; set; }
        public User _user { get; set; }
        public string _name { get; set; }
        public char _gender { get ; set; }
        public string _race { get; set; }
        public string _class { get; set; }
        public int _level { get; set; }
        public int _experience { get; set; }
        public int _money { get; set; }
        public int _fkArea { get; set; }
        //public Area _area { get; set; }

        public static void ValidateName(string name)
        {
            if (name.Any(character => !char.IsLetter(character) && character != ' ') || name.Length < 2 || name.Length > 100)
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
    }
}