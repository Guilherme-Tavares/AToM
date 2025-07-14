using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class BossCharacter
    {
        public int _id { get; set; }
        public int _fkCharacter { get; set; }
        public Character _character { get; set; }
        public int _fkBoss { get; set; }
        public Boss _boss { get; set; }
        public bool _status { get; set; }
    }
}
