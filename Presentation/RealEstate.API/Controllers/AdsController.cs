using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using RealEstate.BusinessLayer.Abstract;
using RealEstate.Dto;
using System.Data;
using System.Net;
using System.Text.Json;

namespace RealEstate.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AdsController : Controller
    {
        private readonly IAdsService _adsService;

        public AdsController(IAdsService adsService)
        {
            this._adsService = adsService;
        }

        [HttpPost]
        public ActionResult<ResponseDto> GetPaginationFilter(ParameterDto parameterDto)
        {
            var result = new ResponseDto()
            {
                Success = true,
                Message = "",
                Data = _adsService.GetPaginationFilter(parameterDto)
            };

            return Ok(result);
        }
    }
}
