using AptechStore.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace AptechStore.DataAccess.Repositoty.IRepository
{
    public interface ICategoryRepository : IRepository<Category>
    {
        void Update(Category category);
    }
}
