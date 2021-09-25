using MVCCoreSPDI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MVCCoreSPDI.Abstract
{
    public interface IStateRepository
    {
        List<State> GetStates();
        public void InsertState(State state);
        public State GetStateById(int id);
        public void DeleteState(int id);
        public void UpdateState(State state);
    }
}
