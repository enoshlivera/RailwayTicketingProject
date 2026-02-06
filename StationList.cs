using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RailwayTicketingProject
{
    public class StationList
    {
        [Key]
        public int StationID { get; set; }
        public String StationCode { get; set; }
        public String StationName { get; set; }
    }
}