using ArrearsFunctions.V1.Boundary.Response;

namespace ArrearsFunctions.V1.UseCase.Interfaces
{
    public interface IGetByIdUseCase
    {
        ResponseObject Execute(int id);
    }
}
