using Autofac;
using RealEstate.BusinessLayer.Abstract;
using RealEstate.BusinessLayer.Concrete;

namespace RealEstate.Ioc
{
    public class BusinessModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<AdsManager>().As<IAdsService>();
            builder.RegisterType<AdsTypeManager>().As<IAdsTypeService>();
        }
    }
}
