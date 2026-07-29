import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure BeliefRevisionOperator where
  epistemicState : Type
  revisionMapping : Type
  agmPostulatesSatisfied : Prop
  iterativeRevisionConverges : Prop
  agmTerm : agmPostulatesSatisfied
  iterationTerm : iterativeRevisionConverges

def BeliefRevisionOperatorClosed (B : BeliefRevisionOperator) : Prop :=
  B.agmPostulatesSatisfied ∧ B.iterativeRevisionConverges

theorem belief_revision_operator_closed (B : BeliefRevisionOperator) : BeliefRevisionOperatorClosed B :=
  And.intro B.agmTerm B.iterationTerm

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse