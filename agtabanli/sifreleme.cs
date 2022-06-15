using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace agtabanli
{
    public class sifreleme
    {
        private string key = "qwertyuıopğüasdfghjklşizxcvbnmöçZXCVBNMÖÇASDFGHJKLŞİQWERTYUIOPĞÜ1234567890*-,.!'^+%&/()=?_;:>£#½{[]}\\|@€₺¨~æß´\"é< ";
        public string sifrele(string item)
        {
            string sifrelenen = "";
            string veri = item;
            for (int i = 0; i < veri.Length; i++)
            {
                sifrelenen += key.IndexOf(veri[i]).ToString() + "$";
            }
            return sifrelenen;
        }


        public string sifrecoz(string item)
        {
            string sifrecozulen = "";
            string veri = item;

            for (int i = 0; i< veri.Length; i++)
              {
                if (veri[i].ToString() == "$")
                {
                    sifrecozulen += key[int.Parse(veri.Substring(0, i))].ToString();
                    veri = veri.Remove(0, i + 1);
                    i = 0;//döngünün sıfırlanmasını sağlar
                }
                
            }
            return sifrecozulen;    
        }
    }
}