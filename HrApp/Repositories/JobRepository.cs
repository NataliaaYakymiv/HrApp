﻿using System.Collections.Generic;
using System.Linq;
using HrApp.Contract;
using HrApp.Contract.Repositories;
using HrApp.Infrastructure;
using HrApp.Models;

namespace HrApp.Repositories
{
    public class JobRepository : DbExecuteProvider, IRepository<Job>
    {
        public JobRepository(IConnectionFactory connectionFactory) : base(connectionFactory)
        {
        }

        public Job Get(int id)
        {
            Dictionary<string, object> parameters = new Dictionary<string, object> { { "@EducationId", id } };

            return CustomExecuteReader<Job>("sp_GetJobById", parameters).FirstOrDefault();
        }

        public IEnumerable<Job> GetAll()
        {
            return CustomExecuteReader<Job>("sp_GetJobs").ToList();
        }

        public IEnumerable<Job> GetAllWhere(Job job)
        {
            Dictionary<string, object> parameters = new Dictionary<string, object>
            {
                {"@PersonId", job.PersonId},
                {"@JobName", job.JobName}
            };

            return CustomExecuteReader<Job>("sp_GetJobsWhere", parameters).ToList();
        }

        public void Add(Job person)
        {
            throw new System.NotImplementedException();
        }

        public void Edit(Job person)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(Job person)
        {
            throw new System.NotImplementedException();
        }
    }
}