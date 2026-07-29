import LogicArtificialIntelligenceTheoremCanonicalLaneLean.AutomatedReasoning

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure LearningAlgorithmPackage {R : InferenceRulePackage}
    {K : KnowledgeBasePackage R} {A : AutomatedReasoningPackage K} where
  hypothesisSpace : Type
  updateRule : Type
  convergenceProof : Prop
  sampleComplexity : Prop

structure LearningAlgorithmEvidence {R : InferenceRulePackage}
    {K : KnowledgeBasePackage R} {A : AutomatedReasoningPackage K}
    (L : LearningAlgorithmPackage A) where
  convergenceProofClosed : L.convergenceProof
  sampleComplexityClosed : L.sampleComplexity

def LearningAlgorithmClosed {R : InferenceRulePackage}
    {K : KnowledgeBasePackage R} {A : AutomatedReasoningPackage K}
    (L : LearningAlgorithmPackage A) : Prop :=
  L.convergenceProof ∧ L.sampleComplexity

theorem learning_algorithm_closed_from_evidence
    {R : InferenceRulePackage} {K : KnowledgeBasePackage R}
    {A : AutomatedReasoningPackage K} (L : LearningAlgorithmPackage A)
    (E : LearningAlgorithmEvidence L) : LearningAlgorithmClosed L := by
  exact And.intro E.convergenceProofClosed E.sampleComplexityClosed

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse