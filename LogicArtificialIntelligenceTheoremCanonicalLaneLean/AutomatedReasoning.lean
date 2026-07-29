import LogicArtificialIntelligenceTheoremCanonicalLaneLean.KnowledgeBases

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure AutomatedReasoningPackage {R : InferenceRulePackage}
    (K : KnowledgeBasePackage R) where
  decisionProcedure : Type
  proofSearchStrategy : Type
  completenessProof : Prop
  terminationProof : Prop

structure AutomatedReasoningEvidence {R : InferenceRulePackage}
    {K : KnowledgeBasePackage R} (A : AutomatedReasoningPackage K) where
  completenessProofClosed : A.completenessProof
  terminationProofClosed : A.terminationProof

def AutomatedReasoningClosed {R : InferenceRulePackage}
    {K : KnowledgeBasePackage R} (A : AutomatedReasoningPackage K) : Prop :=
  A.completenessProof ∧ A.terminationProof

theorem automated_reasoning_closed_from_evidence
    {R : InferenceRulePackage} {K : KnowledgeBasePackage R}
    (A : AutomatedReasoningPackage K)
    (E : AutomatedReasoningEvidence A) : AutomatedReasoningClosed A := by
  exact And.intro E.completenessProofClosed E.terminationProofClosed

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse