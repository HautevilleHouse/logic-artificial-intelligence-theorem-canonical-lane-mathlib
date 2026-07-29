import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure AutomatedTheoremProver where
  calculus : Type
  calculusComplete : Prop
  calculusSound : Prop
  proofSearchProcedure : Type
  procedureTerminatesOnProvable : Prop
  completenessTerm : calculusComplete
  soundnessTerm : calculusSound
  terminationTerm : procedureTerminatesOnProvable

def AutomatedTheoremProverClosed (A : AutomatedTheoremProver) : Prop :=
  A.calculusComplete ∧ A.calculusSound ∧ A.procedureTerminatesOnProvable

theorem automated_theorem_prover_closed (A : AutomatedTheoremProver) : AutomatedTheoremProverClosed A :=
  And.intro A.completenessTerm (And.intro A.soundnessTerm A.terminationTerm)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse