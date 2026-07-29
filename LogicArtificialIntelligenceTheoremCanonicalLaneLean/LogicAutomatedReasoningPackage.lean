import LogicArtificialIntelligenceTheoremCanonicalLaneLean.LogicAdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure AutomatedReasoningPackage where
  inferenceRules : List String
  proofSearchAlgorithm : String
  completeness : Prop
  soundness : Prop
  termination : Prop

structure AutomatedReasoningEvidence (R : AutomatedReasoningPackage) where
  completenessClosed : R.completeness
  soundnessClosed : R.soundness
  terminationClosed : R.termination

def AutomatedReasoningClosed (R : AutomatedReasoningPackage) : Prop :=
  R.completeness ∧ R.soundness ∧ R.termination

theorem automated_reasoning_closed_from_evidence (R : AutomatedReasoningPackage)
    (E : AutomatedReasoningEvidence R) : AutomatedReasoningClosed R := by
  exact And.intro E.completenessClosed (And.intro E.soundnessClosed E.terminationClosed)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse