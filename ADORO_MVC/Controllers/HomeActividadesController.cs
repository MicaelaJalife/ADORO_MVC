using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ADORO_MVC.Context;
using ADORO_MVC.Models;

namespace ADORO_MVC.Controllers
{
    public class HomeActividadesController : Controller
    {
        private readonly AdoroDatabaseContext _context;

        public HomeActividadesController(AdoroDatabaseContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Actividades.ToListAsync());
        }
    }
}
