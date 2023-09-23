using Microsoft.Extensions.Configuration;
using RealEstate.Dto;
using System.Data.SqlClient;
using Dapper;
using System.Data;

namespace RealEstate.DataProvider
{
    public class DapperDataProvider : IQueryDataProvider
    {
        private IConfiguration configuration;
        private int timeOut = 120;

        public DapperDataProvider(IConfiguration configuration)
        {
            this.configuration = configuration;
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public SqlConnection GetConnection()
        {
            string connectionString = configuration.GetSection("ConnectionStrings:RealEstateConnectionString").Value;
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
            return sqlConnection;
        }
        public List<T> GetPaginationFilter<T>(string storeProcedureName, ParameterDto parameterDto) where T : class
        {
            using (SqlConnection sqlConnection = GetConnection())
            {
                var parameters = new DynamicParameters();

                foreach (var parameter in parameterDto.Parameters)
                {
                    parameters.Add(parameter.Name, parameter.Value);
                }

                return sqlConnection.Query<T>(storeProcedureName, parameters, commandTimeout: timeOut, commandType: CommandType.StoredProcedure).ToList();
            }
        }

        public List<T> GetAll<T>(string storeProcedureName) where T : class
        {
            using (SqlConnection sqlConnection = GetConnection())
            {
                var parameters = new DynamicParameters();
                return sqlConnection.Query<T>(storeProcedureName, parameters, commandTimeout: timeOut, commandType: CommandType.StoredProcedure).ToList();
            }
        }
    }
}
