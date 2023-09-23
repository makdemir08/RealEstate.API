using RealEstate.BusinessLayer.Abstract;
using RealEstate.DataAccessLayer.Abstract;
using RealEstate.Dto;

namespace RealEstate.BusinessLayer.Concrete
{
    public class AdsManager : IAdsService
    {
        private readonly IRepositoryDal _repositoryDal;
        public AdsManager(IRepositoryDal repositoryDal)
        {
            this._repositoryDal = repositoryDal;
        }
        public List<AdsDto> GetPaginationFilter(ParameterDto parameterDto)
        {
            return _repositoryDal.GetPaginationFilter<AdsDto>("spAdsFilterList", parameterDto);
        }
    }
}
