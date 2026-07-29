import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure ComplexityClassifier where
  logicFamily : Type
  decidabilityStatus : Prop
  complexityBound : Type
  lowerBoundProof : Prop
  upperBoundProof : Prop
  decidabilityTerm : decidabilityStatus
  lowerBoundTerm : lowerBoundProof
  upperBoundTerm : upperBoundProof

def ComplexityClassifierClosed (C : ComplexityClassifier) : Prop :=
  C.decidabilityStatus ∧ C.lowerBoundProof ∧ C.upperBoundProof

theorem complexity_classifier_closed (C : ComplexityClassifier) : ComplexityClassifierClosed C :=
  And.intro C.decidabilityTerm (And.intro C.lowerBoundTerm C.upperBoundTerm)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse