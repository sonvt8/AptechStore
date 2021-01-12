﻿using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using AptechStore.Models.ViewModels;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace AptechStore.Areas.Admin.Controllers
{
	[Area("Admin")]
	public class ProductController : Controller
	{
		private readonly IUnitOfWork _unitOfWork;
		private readonly IWebHostEnvironment _hostEnvironment;

		public ProductController(IUnitOfWork unitOfWork, IWebHostEnvironment hostEnvironment)
		{
			_unitOfWork = unitOfWork;
			_hostEnvironment = hostEnvironment;
		}

		public IActionResult Index()
		{
			return View();
		}

		public IActionResult Upsert(int? id)
		{
			ProductVM productVM = new ProductVM()
			{
				Product = new Product(),
				CategoryList = _unitOfWork.Category.GetAll().Select(i => new SelectListItem {
					Text = i.Name,
					Value = i.Id.ToString()
				})
			};
			if (id == null)
			{
				// Create
				return View(productVM);
			}
			// Edit
			productVM.Product = _unitOfWork.Product.Get(id.GetValueOrDefault());
			if (productVM.Product == null)
			{
				return NotFound();
			}
			return View(productVM);
		}

		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult Upsert(Product product)
		{
			if (ModelState.IsValid)
			{
				if (product.Id == 0)
				{
					_unitOfWork.Product.Add(product);
				}
				else
				{
					_unitOfWork.Product.Update(product);
				}
				_unitOfWork.Save();
				return RedirectToAction(nameof(Index));
			}
			return View(product);
		}

		#region API CALLS

		[HttpGet]
		public IActionResult GetAll()
		{
			var allObj = _unitOfWork.Product.GetAll(includeProperties:"Category");
			return Json(new { data = allObj });
		}

		[HttpDelete]
		public IActionResult Delete(int id)
		{
			var objFromDb = _unitOfWork.Product.Get(id);
			if (objFromDb == null)
			{
				return Json(new { success = false, message = "Error while deleting" });
			}
			_unitOfWork.Product.Remove(objFromDb);
			_unitOfWork.Save();
			return Json(new { success = true, message = "Delete successfully" });
		}
		#endregion
	}
}

