using Autofac;
using RealEstate.DataAccessLayer.Abstract;
using RealEstate.DataAccessLayer.Concrete;

namespace RealEstate.Ioc
{
    public class DataAccessModule:Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<RepositoryDal>().As<IRepositoryDal>();
        }
    }
}
