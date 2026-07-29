import LogicArtificialIntelligenceTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure InferenceRulePackage where
  ruleName : String
  premises : Nat
  conclusion : Prop
  soundnessProved : Prop
  completenessProved : Prop

structure InferenceRuleEvidence (R : InferenceRulePackage) where
  soundnessProvedClosed : R.soundnessProved
  completenessProvedClosed : R.completenessProved

def InferenceRuleClosed (R : InferenceRulePackage) : Prop :=
  R.soundnessProved ∧ R.completenessProved

theorem inference_rule_closed_from_evidence (R : InferenceRulePackage)
    (E : InferenceRuleEvidence R) : InferenceRuleClosed R := by
  exact And.intro E.soundnessProvedClosed E.completenessProvedClosed

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse