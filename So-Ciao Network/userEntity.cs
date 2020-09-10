using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace So_Ciao_Network
{
    public class userEntity
    {
        public int empID { get; set; }
        public string empName { get; set; }
        public string username { get; set; }
        public string designation { get; set; }
        public string bio { get; set; }
        public string email { get; set; }
        public string phoneNumber { get; set; }
        public int no_of_frnds { get; set; }
        public int no_of_posts { get; set; }
    }
    public class post
    {
        public int postID { get; set; }
        public string postDescription { get; set; }
        public int no_of_likes { get; set; }
        public int no_of_comments { get; set; }
        public DateTime dateOfPost { get; set; }
        public string picture { get; set; }
    }
}