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
    public class AdsTypeController : Controller
    {
        private readonly IAdsTypeService _adsTypeService;

        public AdsTypeController(IAdsTypeService adsTypeService)
        {
            this._adsTypeService = adsTypeService;
        }

        [HttpGet]
        public ActionResult<ResponseDto> GetAll()
        {
            var result = new ResponseDto()
            {
                Success = true,
                Message = "",
                Data = _adsTypeService.GetAll()
            };

            return Ok(result);
        }
    }
}
