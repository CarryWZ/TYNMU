﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;
namespace TYNMU.Data
{
    public class DAO
    {
        public static int NonQuery(string sSql)
        {
            string ConStr = "Server=.;Trusted_Connection=true;DataBase=TynCompany";
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConStr;
            conn.Open();
            SqlCommand comm = new SqlCommand(sSql, conn);
            int iRet=comm.ExecuteNonQuery();
            conn.Close();
            return iRet;
        }
        public static DataSet Query(string sSql)
        {
            string ConStr = "Server=.;Trusted_Connection=true;DataBase=TynCompany";
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConStr;
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(sSql, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            conn.Close();
            return ds;
        }
        public static string GetMD5(string strPwd)
        {
            string pwd = "";
            //实例化一个md5对象
            MD5 md5 = MD5.Create();
            // 加密后是一个字节类型的数组
            byte[] s = md5.ComputeHash(Encoding.UTF8.GetBytes(strPwd));
            //翻转生成的MD5码        
            s.Reverse();
            //通过使用循环，将字节类型的数组转换为字符串，此字符串是常规字符格式化所得
            //只取MD5码的一部分，这样恶意访问者无法知道取的是哪几位
            for (int i = 3; i < s.Length - 1; i++)
            {
                //将得到的字符串使用十六进制类型格式。格式后的字符是小写的字母，如果使用大写（X）则格式后的字符是大写字符
                //进一步对生成的MD5码做一些改造
                pwd = pwd + (s[i] < 198 ? s[i] + 28 : s[i]).ToString("X");
            }
            return pwd;
        }

    }
    
}