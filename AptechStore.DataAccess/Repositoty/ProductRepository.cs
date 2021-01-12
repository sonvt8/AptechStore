using AptechStore.DataAccess.Data;
using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AptechStore.DataAccess.Repositoty
{
    public class ProductRepository : Repository<Product>, IProductRepository
    {
        private readonly ApplicationDbContext _db;

        public ProductRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(Product product)
        {
            var objFromDb = _db.Products.FirstOrDefault(s => s.Id == product.Id);

            if (objFromDb != null)
            {
                if (product.ImageUrl != null)
                {
                    objFromDb.ImageUrl = product.ImageUrl;
                }
                objFromDb.Price = product.Price;
                objFromDb.Title = product.Title;
                objFromDb.Description = product.Description;
                objFromDb.CategoryId = product.CategoryId;
                objFromDb.Author = product.Author;
                objFromDb.Quantity = product.Quantity;
            }

        }
    }
}
