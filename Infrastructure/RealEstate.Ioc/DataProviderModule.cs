using Autofac;
using RealEstate.DataProvider;

namespace RealEstate.Ioc
{
    public class DataProviderModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<DapperDataProvider>().As<IQueryDataProvider>();
        }
    }
}
