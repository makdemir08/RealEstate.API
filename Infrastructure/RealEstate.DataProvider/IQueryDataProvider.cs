using RealEstate.Dto;

namespace RealEstate.DataProvider
{
    public interface IQueryDataProvider
    {
        List<T> GetPaginationFilter<T>(string storeProcedureName,ParameterDto parameterDto) where T : class;
        List<T> GetAll<T>(string storeProcedureName) where T : class;
    }
}
