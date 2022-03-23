using System.Collections.Generic;
using ArrearsFunctions.V1.Domain;

namespace ArrearsFunctions.V1.Gateways
{
    public interface IExampleGateway
    {
        Entity GetEntityById(int id);

        List<Entity> GetAll();
    }
}
