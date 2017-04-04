﻿using System.Collections.Generic;
using System.Linq;
using HrApp.Contract;
using HrApp.Contract.Repositories;
using HrApp.Infrastructure;
using HrApp.Models;

namespace HrApp.Repositories
{
    public class TypeJobRepository : DbExecuteProvider, IRepository<TypeJob>
    {
        public TypeJobRepository(IConnectionFactory connectionFactory) : base(connectionFactory)
        {
        }

        public TypeJob Get(int id)
        {
            Dictionary<string, object> parameters = new Dictionary<string, object> { { "@ProfessionalSkillId", id } };

            return CustomExecuteReader<TypeJob>("sp_GetTypeJobById", parameters).FirstOrDefault();
        }

        public IEnumerable<TypeJob> GetAll()
        {
            return CustomExecuteReader<TypeJob>("sp_GetTypeJobs").ToList();
        }

        public IEnumerable<TypeJob> GetAllWhere(TypeJob job)
        {
            Dictionary<string, object> parameters = new Dictionary<string, object>
            {
                {"@PersonId", job.PersonId},
                {"@NameType", job.NameType}
            };

            return CustomExecuteReader<TypeJob>("sp_GetTypeJobsWhere", parameters).ToList();
        }

        public void Add(TypeJob person)
        {
            throw new System.NotImplementedException();
        }

        public void Edit(TypeJob person)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(TypeJob person)
        {
            throw new System.NotImplementedException();
        }
    }
}