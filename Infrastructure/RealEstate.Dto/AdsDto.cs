using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealEstate.Dto
{
    public class AdsDto
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public Guid LocationId { get; set; }
        public string Location { get; set; }
        public decimal Price { get; set; }
        public short Area { get; set; }
        public byte NumberOfBathrooms { get; set; }
        public Guid AdsTypeId { get; set; }
        public string AdsType { get; set; }
        public Guid NumberOfRoomsId { get; set; }
        public string RoomType { get; set; }
    }
}
