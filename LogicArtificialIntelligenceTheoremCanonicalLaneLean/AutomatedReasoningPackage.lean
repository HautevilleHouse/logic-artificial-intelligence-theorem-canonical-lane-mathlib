import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure AutomatedReasoningPackage where
  resolutionRule : Prop
  unificationAlgorithm : Prop
  clauseNormalForm : Prop
  proofSearchStrategy : Prop

structure AutomatedReasoningEvidence (A : AutomatedReasoningPackage) where
  resolutionRuleClosed : A.resolutionRule
  unificationAlgorithmClosed : A.unificationAlgorithm
  clauseNormalFormClosed : A.clauseNormalForm
  proofSearchStrategyClosed : A.proofSearchStrategy

def AutomatedReasoningClosed (A : AutomatedReasoningPackage) : Prop :=
  A.resolutionRule ∧ A.unificationAlgorithm ∧ A.clauseNormalForm ∧ A.proofSearchStrategy

theorem automated_reasoning_closed_from_evidence (A : AutomatedReasoningPackage)
    (E : AutomatedReasoningEvidence A) : AutomatedReasoningClosed A := by
  exact And.intro E.resolutionRuleClosed
    (And.intro E.unificationAlgorithmClosed
      (And.intro E.clauseNormalFormClosed E.proofSearchStrategyClosed))

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse