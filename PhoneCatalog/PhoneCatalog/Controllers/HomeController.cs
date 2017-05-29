using System.Web.Mvc;
using System.Linq;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;

using Data;
using System.Data.Entity;
using System.Data;

namespace PhoneCatalog.Controllers
{
    public class HomeController : Controller
    {
        PhoneCatalogEntities context = new PhoneCatalogEntities();

        [HttpGet]
        public ActionResult Index()
        {
            IEnumerable<Data.clients> client = context.clients;
            ViewBag.clients = client;
            return View();
        }

        [HttpPost]
        public RedirectResult Index(Data.clients c)
        {
            Data.clients client = new Data.clients();

            client.Number = c.Number;
            client.Surname = c.Surname;
            client.Firstname = c.Firstname;
            client.Middlename = c.Middlename;
            client.Bday = c.Bday;

            context.clients.Add(client);
            context.SaveChanges();

            return Redirect("/Home/Index");
        }

        [HttpGet]
        public ViewResult Edit(string id)
        {
            Data.clients temp = context.clients.Find(id);
            ViewBag.products = temp;

            return View();
        }

        [HttpPost]
        public RedirectResult Edit(Data.clients client, string id)
        {
            //Data.clients c = context.clients.Include(i => i.Surname).Include(i => i.Firstname).Include(i => i.Middlename).Include(i => i.Bday).Where(i => i.Number == client.Number).Single();
            Data.clients temp1 = context.clients.Find(client.Number);
           
            Data.clients temp = new clients();
            var Id = context.clients.Where(x => x.Number == temp1.Number);
            

            temp.Surname = client.Surname;
            temp.Firstname = client.Firstname;
            temp.Middlename = client.Middlename;
            temp.Bday = client.Bday;

            //context.Entry(temp).State = System.Data.Entity.EntityState.Modified;
            context.SaveChanges();

            return Redirect("/Home/Index");
        }

        [HttpGet]
        public RedirectResult ClientRemove(string id)
        {
            Data.clients temp = context.clients.Find(id);
            context.clients.Remove(temp);
            context.SaveChanges();
            return Redirect("/Home/Index");
        }

    }
}
