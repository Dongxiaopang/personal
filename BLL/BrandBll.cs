using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BrandBll
    {
        public static List<Model.Brand> GetBrand()
        {
            return DAL.BrandDal.GetBrand();
        }
    }
}
