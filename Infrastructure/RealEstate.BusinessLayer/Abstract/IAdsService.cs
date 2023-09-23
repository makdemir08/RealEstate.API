using RealEstate.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealEstate.BusinessLayer.Abstract
{
    public interface IAdsService
    {
        List<AdsDto> GetPaginationFilter(ParameterDto parameterDto);
    }
}
