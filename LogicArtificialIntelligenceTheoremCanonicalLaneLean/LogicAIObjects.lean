import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure LogicAISpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LogicAIAdmittedObject where
  space : LogicAISpace
  closedUnderLogic : Prop
  satisfiesTheorem : Prop
  modelSpace : Type
  modelTopology : TopologicalSpace modelSpace
  soundness : Prop
  completeness : Prop
  oracleStatement : Prop
  conclusion : oracleStatement

def LogicAIWitnessClosed (O : LogicAIAdmittedObject) : Prop :=
  O.oracleStatement

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse