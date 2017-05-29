using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using Data;
using System.Web.Http;

namespace PhoneCatalog.Controllers
{
    public class ClientController : ApiController
    {
        [HttpGet]
        public IEnumerable<clients> Get()
        {
            using (PhoneCatalogEntities entities = new PhoneCatalogEntities())
            {
                return entities.clients.ToList();
            }
        }

        public clients Get(string id)
        {
            using (PhoneCatalogEntities ent = new PhoneCatalogEntities())
            {
                return ent.clients.FirstOrDefault(e => e.Number == id);
            }
        }
    }
}
