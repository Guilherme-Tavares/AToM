using RPGame.mapping;

namespace RPGame.Interface
{
    interface IuserDAO<T>
    {
        public void Create(T user);
        public List<User> GetAll();
        public int GetIdByLicense(string license);
        public bool VerifyLicense(string license);
        public User GetByLicense(string license);
        public void UpdateName(T user);
        public void DeleteByLicense(string license);
    }
}