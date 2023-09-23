using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealEstate.Dto
{
    public class ParameterDto
    {
        public List<ParameterFieldDto> Parameters { get; set; }
    }

    public class ParameterFieldDto
    {
        public string Name { get; set; }
        public string? Value { get; set; }
    }
}
