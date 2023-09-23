using RealEstate.DataAccessLayer.Abstract;
using RealEstate.DataProvider;
using RealEstate.Dto;

namespace RealEstate.DataAccessLayer.Concrete
{
    public class RepositoryDal : IRepositoryDal
    {
        private readonly IQueryDataProvider _queryProvider;
        public RepositoryDal(IQueryDataProvider queryProvider)
        {
            this._queryProvider = queryProvider;
        }

        public List<T> GetAll<T>(string storeProcedureName) where T : class
        {
            return _queryProvider.GetAll<T>(storeProcedureName);
        }

        public List<T> GetPaginationFilter<T>(string storeProcedureName, ParameterDto parameterDto) where T : class
        {
            return _queryProvider.GetPaginationFilter<T>(storeProcedureName, parameterDto);
        }
    }
}
