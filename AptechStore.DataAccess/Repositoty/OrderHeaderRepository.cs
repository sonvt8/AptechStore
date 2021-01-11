using AptechStore.DataAccess.Data;
using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AptechStore.DataAccess.Repositoty
{
    public class OrderHeaderRepository : Repository<OrderHeader>, IOrderHeaderRepository
    {
        private readonly ApplicationDbContext _db;

        public OrderHeaderRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(OrderHeader obj)
        {
            _db.Update(obj);
        }
    }
}
