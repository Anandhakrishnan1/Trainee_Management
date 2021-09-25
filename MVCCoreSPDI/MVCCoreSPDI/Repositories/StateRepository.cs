using Microsoft.Extensions.Configuration;
using MVCCoreSPDI.Abstract;
using MVCCoreSPDI.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace MVCCoreSPDI.Repositories
{
    public class StateRepository : IStateRepository
    {
        SqlConnection _sqlConnection;
        IConfiguration _configuration;
        public StateRepository(IConfiguration configuration)
        {
            _configuration = configuration;
            _sqlConnection = new SqlConnection(this._configuration["SqlConnectionString"]);
        }

        public void DeleteState(int id)
        {
            _sqlConnection.Open();
            SqlCommand cmd = new SqlCommand("spDeleteState", _sqlConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pStateId", id);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            _sqlConnection.Close();
        }

        public State GetStateById(int id)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("spGetStateById " + id, _sqlConnection);
            da.Fill(ds, "States");
            DataRow row = ds.Tables["States"].Rows[0];
            State state = new State
            {
                StateId = Int32.Parse(row["StateId"].ToString()),
                StateName = row["StateName"].ToString()
            };
            return state;
        }

        public List<State> GetStates()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("spGetStates", _sqlConnection);
            da.Fill(ds, "States");
            List<State> states = new List<State>();
            foreach (DataRow item in ds.Tables["States"].Rows)
            {
                State state = new State
                {
                    StateId = Int32.Parse(item["StateId"].ToString()),
                    StateName = item["StateName"].ToString()
                };
                states.Add(state);
            }
            return states;
        }

        public void InsertState(State state)
        {
            _sqlConnection.Open();
            SqlCommand cmd = new SqlCommand("spInsertState", _sqlConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pStateName", state.StateName);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            _sqlConnection.Close();
        }

        public void UpdateState(State state)
        {
            _sqlConnection.Open();
            SqlCommand cmd = new SqlCommand("spUpdateState", _sqlConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pStateId", state.StateId);
            cmd.Parameters.AddWithValue("@pStateName", state.StateName);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            _sqlConnection.Close();
        }
    }
}
