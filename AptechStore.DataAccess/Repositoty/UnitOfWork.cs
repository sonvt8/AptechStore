﻿using AptechStore.DataAccess.Data;
using AptechStore.DataAccess.Repositoty;
using AptechStore.DataAccess.Repositoty.IRepository;
using System;
using System.Collections.Generic;
using System.Text;

namespace CloudStudio.DataAccess.Repositoty
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _db;
        public UnitOfWork(ApplicationDbContext db)
        {
            _db = db;
            SP_Call = new SP_Call(_db);
        }
     
        public ISP_Call SP_Call { get; private set; }
        public void Dispose()
        {
            _db.Dispose();
        }
        public void Save()
        {
            _db.SaveChanges();
        }
    }
}
