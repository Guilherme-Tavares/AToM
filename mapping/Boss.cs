using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class Boss
    {
        public int _id {  get; set; }
        public string _name { get; set; }
        public int _experienceReward { get; set; }
        public int _fkArea { get; set; }
        public Area _area { get; set; }
    }
}
