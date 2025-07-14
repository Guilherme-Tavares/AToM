using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class QuestCharacter
    {
        public int _id { get; set; }
        public int _fkCharacter { get; set; }
        public Character _character { get; set; }
        public int _fkQuest { get; set; }
        public Quest _quest { get; set; }
        public string _status { get; set; }
    }
}
