﻿using System.Collections.Generic;
using HrApp.Models;

namespace HrApp.Contract.Repositories
{
    public interface IRepository<T>
    {
        T Get(int id);

        IEnumerable<T> GetAll();

        IEnumerable<T> GetAllWhere(T person, int page, int count);

        void Add(T person);

        void Edit(T person);

        void Delete(int id);
    }
}