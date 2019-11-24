using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace IndividualAssignment.Pages
{
    public class AutoCompleteCatBreedModel : PageModel
    {
        [BindProperty]
        private string Term { get; set; }
        private IList<string> catBreeds = new List<string>();

        public JsonResult OnGet()
        {
            Term = HttpContext.Request.Query["term"];

            AddBreeds("Bengal");
            AddBreeds("American Shorthair");
            AddBreeds("British Shorthair");
            AddBreeds("Persian");
            AddBreeds("Munchkin");
            return new JsonResult(catBreeds);
        }
        private void AddBreeds(string catBreed)
        {
            if (catBreed.Contains(Term))
            {
                catBreeds.Add(catBreed);
            }
        }

    }
}
