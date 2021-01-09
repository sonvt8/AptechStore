using System;
using System.Collections.Generic;
using System.Text;

namespace AptechStore.DataAccess.Repositoty.IRepository
{
    public interface IUnitOfWork : IDisposable
    {
        ISP_Call SP_Call { get; }

        void Save();
    }
}
