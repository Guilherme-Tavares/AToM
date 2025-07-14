using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class ItemInventory
    {
        public int _id { get; set; }
        public int _fkInventory { get; set; }
        public Inventory _inventory { get; set; }
        public int _fkItem { get; set; }
        public Item _item { get; set; }
        public int _quantity { get; set; }
    }
}
