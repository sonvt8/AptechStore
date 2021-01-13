using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AptechStore.DataAccess.Repositoty.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace AptechStore.Areas.Customer.Controllers
{
    [Area("Customer")]
    [Route("api/[controller]")]
    [ApiController]
    public class PostApiController : ControllerBase
    {
        private readonly IUnitOfWork _unitOfwork;

        public PostApiController(IUnitOfWork unitOfWork)
        {
            _unitOfwork = unitOfWork;
        }

        [Produces("application/json")]
        [HttpGet("search")]
        public IActionResult Search()
        {
            try
            {
                string term = HttpContext.Request.Query["term"].ToString();
                var postTitle = _unitOfwork.Product.GetAll(p => p.Title.Contains(term)).Select(p => p.Title);
                return Ok(postTitle);
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }
    }
}
