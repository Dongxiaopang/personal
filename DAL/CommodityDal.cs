using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace DAL
{
    public class CommodityDal
    {
        public static List<Model.Commodity> GetCommodity()
        {
            List<Model.Commodity> modelList = new List<Model.Commodity>();
            string sql = "select *from Commodity";
            SqlDataReader dr = DbHepler.ExecuteReader(sql);
            while (dr.Read())
            {
                modelList.Add(new Model.Commodity()
                {
                    ID = (int)dr["ID"],
                    Name = dr["Name"].ToString(),
                    Powersupplymode = dr["Powersupplymode"].ToString(),
                    Price = (decimal)dr["Price"],
                });
            }
            DbHepler.Close();
            return modelList;
        }
    }
}
