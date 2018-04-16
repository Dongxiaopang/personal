using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class CommodityBll
    {
       public static List<Model.Commodity> GetCommodity()
       {
           return DAL.CommodityDal.GetCommodity();
       }
    }
}
