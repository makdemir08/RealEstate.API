using RealEstate.BusinessLayer.Abstract;
using RealEstate.DataAccessLayer.Abstract;
using RealEstate.Dto;

namespace RealEstate.BusinessLayer.Concrete
{
    public class AdsTypeManager : IAdsTypeService
    {
        private readonly IRepositoryDal _repositoryDal;
        public AdsTypeManager(IRepositoryDal repositoryDal)
        {
            this._repositoryDal = repositoryDal;
        }
        public List<AdsTypeDto> GetAll()
        {
            return _repositoryDal.GetAll<AdsTypeDto>("spAdsTypeList");
        }
    }
}
