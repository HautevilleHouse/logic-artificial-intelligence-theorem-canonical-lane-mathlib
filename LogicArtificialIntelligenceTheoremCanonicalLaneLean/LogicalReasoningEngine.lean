import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure LogicalReasoningEngine where
  deductionRules : Type
  ruleSetSound : Prop
  ruleSetComplete : Prop
  proofSearchStrategy : Type
  strategyTermination : Prop
  strategyTerminationTerm : strategyTermination

def LogicalReasoningEngineClosed (L : LogicalReasoningEngine) : Prop :=
  L.ruleSetSound ∧ L.ruleSetComplete ∧ L.strategyTermination

theorem logical_reasoning_engine_closed (L : LogicalReasoningEngine) : LogicalReasoningEngineClosed L :=
  And.intro L.ruleSetSound (And.intro L.ruleSetComplete L.strategyTerminationTerm)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse