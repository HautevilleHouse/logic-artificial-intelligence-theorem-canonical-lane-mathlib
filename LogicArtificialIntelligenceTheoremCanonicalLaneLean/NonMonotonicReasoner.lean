import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure NonMonotonicReasoner where
  defaultRules : Type
  fixedPointSemantics : Type
  minimalModelProperty : Prop
  rationalityPostulates : Prop
  minimalModelTerm : minimalModelProperty
  rationalityTerm : rationalityPostulates

def NonMonotonicReasonerClosed (N : NonMonotonicReasoner) : Prop :=
  N.minimalModelProperty ∧ N.rationalityPostulates

theorem non_monotonic_reasoner_closed (N : NonMonotonicReasoner) : NonMonotonicReasonerClosed N :=
  And.intro N.minimalModelTerm N.rationalityTerm

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse