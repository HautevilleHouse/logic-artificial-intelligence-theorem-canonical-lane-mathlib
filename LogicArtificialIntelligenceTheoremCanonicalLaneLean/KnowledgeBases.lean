import LogicArtificialIntelligenceTheoremCanonicalLaneLean.InferenceRules

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure KnowledgeBasePackage (R : InferenceRulePackage) where
  axioms : List Prop
  rules : List R
  consistent : Prop
  complete : Prop

structure KnowledgeBaseEvidence {R : InferenceRulePackage}
    (K : KnowledgeBasePackage R) where
  consistentClosed : K.consistent
  completeClosed : K.complete

def KnowledgeBaseClosed {R : InferenceRulePackage}
    (K : KnowledgeBasePackage R) : Prop :=
  K.consistent ∧ K.complete

theorem knowledge_base_closed_from_evidence
    {R : InferenceRulePackage} (K : KnowledgeBasePackage R)
    (E : KnowledgeBaseEvidence K) : KnowledgeBaseClosed K := by
  exact And.intro E.consistentClosed E.completeClosed

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse