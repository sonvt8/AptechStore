using AptechStore.DataAccess.Data;
using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AptechStore.DataAccess.Repositoty
{
    public class ApplicationUserRepository : Repository<ApplicationUser>, IApplicationUserRepository
    {
        private readonly ApplicationDbContext _db;

        public ApplicationUserRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
    }
}
