using AptechStore.DataAccess.Data;
using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AptechStore.DataAccess.Repositoty
{
    public class ShoppingCartRepository : Repository<ShoppingCart>, IShoppingCartRepository
    {
        private readonly ApplicationDbContext _db;

        public ShoppingCartRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(ShoppingCart obj)
        {
            _db.Update(obj);
        }
    }
}
