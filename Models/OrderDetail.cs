﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BooksShopOnline.Models
{
    public class OrderDetail
    {
        public int OrderDetailId { get; set; }
        public int OrderId { get; set; }
        public string Username { get; set; }
        public int BookId { get; set; }
        public int Quantity { get; set; }
        public double? UnitPrice { get; set; }
    }
}