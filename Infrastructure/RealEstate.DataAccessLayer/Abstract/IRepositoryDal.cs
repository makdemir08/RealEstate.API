using RealEstate.Dto;

namespace RealEstate.DataAccessLayer.Abstract
{
    public interface IRepositoryDal
    {
        List<T> GetPaginationFilter<T>(string storeProcedureName, ParameterDto parameterDto) where T : class;
        List<T> GetAll<T>(string storeProcedureName) where T : class;
    }
}
