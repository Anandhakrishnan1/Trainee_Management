using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MVCCoreSPDI.Abstract;
using MVCCoreSPDI.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace MVCCoreSPDI.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        IStateRepository _stateRepository;
        public HomeController(ILogger<HomeController> logger, IStateRepository stateRepository)
        {
            _stateRepository = stateRepository;
            _logger = logger;
        }

        public IActionResult Index()
        {
            var states = _stateRepository.GetStates();
            return View(states);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(State state)
        {
            _stateRepository.InsertState(state);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var state = _stateRepository.GetStateById(id);
            return View(state);
        }
        public IActionResult Delete(int id)
        {
            var state = _stateRepository.GetStateById(id);
            return View(state);
        }
        [HttpPost]
        [ActionName("Delete")]
        public IActionResult DeleteRecord(int id)
        {
            _stateRepository.DeleteState(id);
            return RedirectToAction("Index");
        }
        public IActionResult Edit(int id)
        {
            var state = _stateRepository.GetStateById(id);
            return View(state);
        }
        [HttpPost]
        public IActionResult Edit(State state)
        {
            _stateRepository.UpdateState(state);
            return RedirectToAction("Index");
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
