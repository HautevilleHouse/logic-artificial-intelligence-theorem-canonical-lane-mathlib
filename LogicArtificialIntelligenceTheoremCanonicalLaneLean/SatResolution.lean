import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure SatResolutionPackage where
  clauseSet : Type u
  resolutionRule : Prop
  refutationComplete : Prop
  soundness : Prop
  refutationCompleteTerm : refutationComplete
  soundnessTerm : soundness

structure SatResolutionEvidence (S : SatResolutionPackage) where
  resolutionRuleClosed : S.resolutionRule
  refutationCompleteClosed : S.refutationComplete
  soundnessClosed : S.soundness

def SatResolutionClosed (S : SatResolutionPackage) : Prop :=
  S.resolutionRule ∧ S.refutationComplete ∧ S.soundness

theorem sat_resolution_closed_from_evidence (S : SatResolutionPackage)
    (E : SatResolutionEvidence S) : SatResolutionClosed S :=
  And.intro E.resolutionRuleClosed
    (And.intro E.refutationCompleteClosed E.soundnessClosed)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse