﻿using Project.DbConnect;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Model
{
    class LoginSginupModel
    {

        Transactions trans = new Transactions();

        public DataTable signup(string username,string password) {

            string sql = "INSERT INTO user_info (user_name, user_password)" +
                "VALUES  (  '" + username +  "', '"+password+"' )RETURNING * ";
            DataTable dt = new DataTable();
            trans.OpenConnection();
            trans.startTransaction();
            try
            {

                dt = trans.Datasource(sql);
                trans.commitQuery();
                trans.closeTransaction();
            }
            catch (Exception e) {
                trans.closeTransaction();
            }

            return dt;

        }


        public DataTable login(string username, string password)
        {

            string sql = "SELECT  user_name,user_password FROM user_info WHERE "+
              "user_name = '"+ username  + "' AND  user_password = '"+ password + "' ";

            DataTable dt = new DataTable();

            trans.OpenConnection();
            trans.startTransaction();
            try
            {

                dt = trans.Datasource(sql);
                trans.commitQuery();
                trans.closeTransaction();
            }
            catch (Exception e)
            {
                trans.closeTransaction();

            }
            return dt;

        }


    }
}
