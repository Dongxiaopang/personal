using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace DAL
{
    public class BrandDal
    {
        public static List<Model.Brand> GetBrand()
        {
            List<Model.Brand> modelList = new List<Model.Brand>();
            string sql = "";
            SqlDataReader dr = DbHepler.ExecuteReader(sql);
            while (dr.Read())
            {
                modelList.Add(new Model.Brand()
                {
                    ID = (int)dr["ID"],
                    brandName = dr["brandName"].ToString(),
                });
            }
            DbHepler.Close();
            return modelList;
        }
    }
}
