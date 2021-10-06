using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.App_Data.Model;

namespace WebApplication1.App_Code
{
    public class Utility
    {
        public Member FindMember(string account,string password)
        {
            YtsysTest _db = new YtsysTest();
            var q = (from s in _db.Members
                    where s.Account == account && s.PassWord == password
                    select s).SingleOrDefault();
            return q;
        }

        public Member GetMember(int id)
        {
            YtsysTest _db = new YtsysTest();
            var q = (from s in _db.Members
                    where s.MemberId == id
                    select s).SingleOrDefault();

            return q;
        }

    }
}