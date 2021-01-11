using System;
using System.Collections.Generic;
using System.Text;

namespace AptechStore.DataAccess.Repositoty.IRepository
{
    public interface IUnitOfWork : IDisposable
    {
        ISP_Call SP_Call { get; }
        ICategoryRepository Category { get; }
        IProductRepository Product { get; }
        IOrderDetailsRepository OrderDetails { get; }
        IOrderHeaderRepository OrderHeader { get; }
        IShoppingCartRepository ShoppingCart { get; }
        void Save();
    }
}
