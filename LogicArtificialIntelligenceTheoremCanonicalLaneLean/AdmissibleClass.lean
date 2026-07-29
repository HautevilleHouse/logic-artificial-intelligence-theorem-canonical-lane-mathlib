import LogicArtificialIntelligenceTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LogicAIAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LogicAIWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse