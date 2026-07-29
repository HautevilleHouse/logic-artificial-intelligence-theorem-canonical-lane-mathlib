import canonicalLaneMathlib.AdmissibleClass
import LogicArtificialIntelligenceTheoremCanonicalLaneLean.AutomatedReasoningPackage
import LogicArtificialIntelligenceTheoremCanonicalLaneLean.TheoremProvingBridge
import LogicArtificialIntelligenceTheoremCanonicalLaneLean.KnowledgeRepresentation

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

def ConstrainedLogicAIClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_logic_ai_endgame (A : AdmissibleClass) :
    ConstrainedLogicAIClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse