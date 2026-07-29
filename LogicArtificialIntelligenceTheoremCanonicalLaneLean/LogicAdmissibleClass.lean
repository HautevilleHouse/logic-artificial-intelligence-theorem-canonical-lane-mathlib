import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure LogicAdmittedObject where
  formula : String
  satisfiable : Prop
  derivable : Prop
  conclusion : satisfiable

structure AdmissibleClass where
  object : LogicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LogicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def LogicWitnessClosed (O : LogicAdmittedObject) : Prop :=
  O.satisfiable

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse