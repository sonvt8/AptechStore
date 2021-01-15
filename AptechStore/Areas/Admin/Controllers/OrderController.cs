using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AptechStore.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class OrderController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        public OrderController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public IActionResult Index()
        {
            return View();
        }


        #region API CALLS
        [HttpGet]
        public IActionResult GetOrderList()
        {
            IEnumerable<OrderHeader> orderHeaderList;

            orderHeaderList = _unitOfWork.OrderHeader.GetAll(includeProperties: "ApplicationUser");

            return Json(new { data = orderHeaderList });
        }
        #endregion
    }
}
