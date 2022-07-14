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
    public class ActividadesController : Controller
    {
        private readonly AdoroDatabaseContext _context;

        public ActividadesController(AdoroDatabaseContext context)
        {
            _context = context;
        }

        // GET: Actividades
        public async Task<IActionResult> Index()
        {
            return View(await _context.Actividades.ToListAsync());
        }

        // GET: Actividades/DetailsUser/5
        public async Task<IActionResult> DetailsUser(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var actividad = await _context.Actividades
                .FirstOrDefaultAsync(m => m.Id == id);
            if (actividad == null)
            {
                return NotFound();
            }

            var sala = await _context.Salas.FindAsync(actividad.SalaId);
            int capacidadSala = sala.CapacidadMax;
            ViewBag.capacidadSala = capacidadSala - actividad.Contador;
            return View(actividad);
        }

        // GET: Actividades/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var actividad = await _context.Actividades
                .FirstOrDefaultAsync(m => m.Id == id);
            if (actividad == null)
            {
                return NotFound();
            }

            return View(actividad);
        }

        // GET: Actividades/Create
        public IActionResult Create()
        {
            var _missalas = new SelectList(_context.Salas.ToList(), "Id", "Nombre", null);
            ViewBag.MisSalas = _missalas;

            return View();
        }

        // POST: Actividades/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Nombre,TipoActividad,GeneroActividad,Descripcion,EstadoAct,FechaInicio,FechaFin,Imagen,SalaId")] Actividad actividad)
        {
            if (ModelState.IsValid)
            {
                if (actividad.FechaInicio < actividad.FechaFin)
                {
                    actividad.Contador = 0;
                    _context.Add(actividad);
                    await _context.SaveChangesAsync();
                    return RedirectToAction(nameof(Index));
                }
                else 
                {
                    ViewBag.mensajeError = "La fecha de inicio debe ser menor a la fecha de fin.";
                    var _missalas = new SelectList(_context.Salas.ToList(), "Id", "Nombre", null);
                    ViewBag.MisSalas = _missalas;
                    return View();
                }
            }
            return View(actividad);
        }

        // GET: Actividades/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var actividad = await _context.Actividades.FindAsync(id);
            if (actividad == null)
            {
                return NotFound();
            }
            var _missalas = new SelectList(_context.Salas.ToList(), "Id", "Nombre", null);
            ViewBag.MisSalas = _missalas;

            return View(actividad);
        }

        // POST: Actividades/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Nombre,TipoActividad,GeneroActividad,Descripcion,EstadoAct,FechaInicio,FechaFin,Imagen,SalaId")] Actividad actividad)
        {
            if (id != actividad.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    if (actividad.FechaInicio < actividad.FechaFin)
                    {
                        _context.Update(actividad);
                        await _context.SaveChangesAsync();
                    }
                    else
                    {
                        ViewBag.mensajeError = "La fecha de inicio debe ser menor a la fecha de fin.";
                        var _missalas = new SelectList(_context.Salas.ToList(), "Id", "Nombre", null);
                        ViewBag.MisSalas = _missalas;
                        return View();
                    }
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ActividadExists(actividad.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(actividad);
        }

        // GET: Actividades/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var actividad = await _context.Actividades
                .FirstOrDefaultAsync(m => m.Id == id);
            if (actividad == null)
            {
                return NotFound();
            }

            return View(actividad);
        }

        // POST: Actividades/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var actividad = await _context.Actividades.FindAsync(id);
            _context.Actividades.Remove(actividad);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ActividadExists(int id)
        {
            return _context.Actividades.Any(e => e.Id == id);
        }

        // POST: Actividades/Reservar
        public async Task<IActionResult> Reservar(int? id)
        {
            var actividad = await _context.Actividades
                .FirstOrDefaultAsync(m => m.Id == id);
            if (actividad == null)
            {
                return NotFound();
            }
            return View(actividad);
        }

        // POST: Actividades/Reservar
        public async Task<IActionResult> EfectuarReserva(int? id, int cantidadEntradas)
        {
            var actividad = await _context.Actividades
                .FirstOrDefaultAsync(m => m.Id == id);
            if (actividad == null)
            {
                return NotFound();
            }
            int contador = actividad.Contador;
            //int contador = 10; 

            //Sala sala = await _context.Salas.FindAsync(actividad.SalaId);
            var sala = await _context.Salas.FindAsync(actividad.SalaId);
            if (sala == null)
            {
                return NotFound();
            }
            int capacidadSala = sala.CapacidadMax;
            if (contador + cantidadEntradas <= capacidadSala)
            {
                contador += cantidadEntradas;
                actividad.Contador = contador;
                await _context.SaveChangesAsync();
                ViewBag.capacidadSala = capacidadSala - contador;
                return View("DetailsUser", actividad);
            }
            else {
                ViewBag.mensajeError = "No se puede reservar esa cantidad de entradas";
                return View("Reservar", actividad);
            }
            
        }
    }
}
