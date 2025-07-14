using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class ItemQuest
    {
        public int _id { get; set; }
        public int _fkQuest { get; set; }
        public Quest _quest { get; set; }
        public int _fkItem { get; set; }
        public Item _item { get; set; }
        public int _quantity { get; set; }
    }
}
