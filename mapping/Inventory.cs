using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class Inventory
    {
        public int _id { get; set; }
        public int _capacity { get; set; }
        public int _fkCharacter { get; set; }
        public Character _character { get; set; }
    }
}
