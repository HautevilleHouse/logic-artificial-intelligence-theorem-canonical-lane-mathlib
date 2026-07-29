import LogicArtificialIntelligenceTheoremCanonicalLaneLean.LogicGateLemmas

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

def ConstrainedLogicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_logic_endgame (A : AdmissibleClass) :
    ConstrainedLogicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse