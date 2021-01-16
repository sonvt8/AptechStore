using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using AptechStore.Models.ViewModels;
using AptechStore.Utility;
using cloudscribe.Pagination.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace AptechStore.Areas.Customer.Controllers
{
	[Area("Customer")]
	public class HomeController : Controller
	{
		private readonly ILogger<HomeController> _logger;
		private readonly IUnitOfWork _unitOfWork;

		public HomeController(ILogger<HomeController> logger, IUnitOfWork unitOfWork)
		{
			_logger = logger;
			_unitOfWork = unitOfWork;
		}

        public IActionResult Index(string postTitle, int pageNumber = 1, int pageSize = 4)
        {
            int ExcludeRecords = (pageSize * pageNumber) - pageSize;

            IEnumerable<Product> productList = _unitOfWork.Product.GetAll(includeProperties: "Category");
            var bookCount = productList.Count();

            if (!string.IsNullOrEmpty(postTitle))
            {
                productList = productList.Where(b => b.Title.Contains(postTitle));
                bookCount = productList.Count();
            }

            productList = productList.Skip(ExcludeRecords).Take(pageSize);

            var result = new PagedResult<Product>
            {
                Data = productList.ToList(),
                TotalItems = bookCount,
                PageNumber = pageNumber,
                PageSize = pageSize
            };

            var claimsIdentity = (ClaimsIdentity)User.Identity;
            var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
            if (claim != null)
            {
                var count = _unitOfWork.ShoppingCart.GetAll(c => c.ApplicationUserId == claim.Value).ToList().Count();

                HttpContext.Session.SetInt32(SD.ssShoppingCart, count);
            }
            return View(result);
        }

        public IActionResult Details(int id)
		{
			var productFromDb = _unitOfWork.Product.GetFirstOrDefault(u => u.Id == id, includeProperties: "Category");
			ShoppingCart cartObj = new ShoppingCart()
			{
				Product = productFromDb,
				ProductId = productFromDb.Id
			};
			return View(cartObj);
		}
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public IActionResult Details(ShoppingCart CartObject)
        {
            CartObject.Id = 0;
            if (ModelState.IsValid)
            {
                //then we will add to cart
                var claimsIdentity = (ClaimsIdentity)User.Identity;
                var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
                CartObject.ApplicationUserId = claim.Value;
                ShoppingCart cartFromDb = _unitOfWork.ShoppingCart.GetFirstOrDefault
                    (
                    u => u.ApplicationUserId == CartObject.ApplicationUserId && u.ProductId == CartObject.ProductId, includeProperties: "Product"
                    );
                if (cartFromDb == null)
                {

                    //no records exists in database for that product for that user
                    _unitOfWork.ShoppingCart.Add(CartObject);
                }
                else
                {
                    cartFromDb.Count += CartObject.Count;
                    if (cartFromDb.Count >= cartFromDb.Product.Quantity)
                    {
                        return RedirectToAction(nameof(Index));
                    }
                    //_unitOfwork.ShoppingCart.Update(cartFromDb);
                }
                _unitOfWork.Save();

                var count = _unitOfWork.ShoppingCart.GetAll(c => c.ApplicationUserId == CartObject.ApplicationUserId).ToList().Count();

                //HttpContext.Session.SetObject(SD.ssShoppingCart, CartObject);
                HttpContext.Session.SetInt32(SD.ssShoppingCart, count);

                return RedirectToAction(nameof(Index));
            }
            else
            {
                var productFromDb = _unitOfWork.Product.GetFirstOrDefault(u => u.Id == CartObject.ProductId, includeProperties: "Category,CoverType");
                ShoppingCart cartObj = new ShoppingCart()
                {
                    Product = productFromDb,
                    ProductId = productFromDb.Id
                };
                return View(cartObj);
            }


        }
        public IActionResult Privacy()
		{
			return View();
		}

		[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}
	}
}
