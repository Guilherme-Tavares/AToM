using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RPGame.mapping
{
    internal class Quest
    {
        public int _id {  get; set; }
        public string _name { get; set; }
        public string _description { get; set; }
        public int _experienceReward { get; set; }
        public int _moneyReward { get; set; }
        public int _fkNpc { get; set; }
        public NPC _npc { get; set; }
    }
}
