using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class ItemArea
    {
        public int _id { get; set; }
        public int _fkArea { get; set; }
        public Area _area { get; set; }
        public int _fkItem { get; set; }
        public Item _item { get; set; }
        public int _quantity { get; set; }
        public bool _available { get; set; }
    }
}
