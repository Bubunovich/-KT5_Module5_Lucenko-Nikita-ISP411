﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SportInvent.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class KT5Entities1 : DbContext
    {
        private static KT5Entities1 _context;
        public KT5Entities1()
            : base("name=KT5Entities1")
        {
        }
        public static KT5Entities1 GetContext()
        {
            if(_context == null)
            {
                _context = new KT5Entities1();
            }
            return _context;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<GenderTable> GenderTable { get; set; }
        public virtual DbSet<RoleTable> RoleTable { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<VhodTable> VhodTable { get; set; }
    }
}