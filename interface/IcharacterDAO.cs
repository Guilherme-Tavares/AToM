using RPGame.mapping;

namespace RPGame.Interface
{
    interface IcharacterDAO<T>
    {
        public void Create(T character, User user);
        public List<Character> GetByUser(User user);
        public void DeleteById(int characterId);
    }
}