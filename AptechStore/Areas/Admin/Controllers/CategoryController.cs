﻿using AptechStore.DataAccess.Repositoty.IRepository;
using AptechStore.Models;
using AptechStore.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AptechStore.Areas.Admin.Controllers
{
	[Area("Admin")]
	[Authorize(Roles = SD.Role_Admin)]
	public class CategoryController : Controller
	{
		private readonly IUnitOfWork _unitOfWork;

		public CategoryController(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}

		public IActionResult Index()
		{
			return View();
		}

		public IActionResult Upsert(int? id)
		{
			Category category = new Category();
			if (id == null)
			{
				// Create
				return View(category);
			}
			// Edit
			category = _unitOfWork.Category.Get(id.GetValueOrDefault());
			if (category == null)
			{
				return NotFound();
			}
			return View(category);
		}

		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult Upsert(Category category)
		{
			if (ModelState.IsValid)
			{
				if (category.Id == 0)
				{
					_unitOfWork.Category.Add(category);
				}
				else
				{
					_unitOfWork.Category.Update(category);
				}
				_unitOfWork.Save();
				return RedirectToAction(nameof(Index));
			}
			return View(category);
		}

		#region API CALLS

		[HttpGet]
		public IActionResult GetAll()
		{
			var allObj = _unitOfWork.Category.GetAll();
			return Json(new { data = allObj });
		}

		[HttpDelete]
		public IActionResult Delete(int id)
		{
			var objFromDb = _unitOfWork.Category.Get(id);
			if (objFromDb == null)
			{
				return Json(new { success = false, message = "Error while deleting" });
			}
			_unitOfWork.Category.Remove(objFromDb);
			_unitOfWork.Save();
			return Json(new { success = true, message = "Delete successfully" });
		}
		#endregion
	}
}
