import LogicArtificialIntelligenceTheoremCanonicalLaneLean.LogicAIObjects

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure ProofComplexityPackage where
  theorem : LogicAIAdmittedObject
  lengthBound : ℕ
  depthBound : ℕ
  cutElimination : Prop
  normalizationAvailable : Prop

structure ProofComplexityEvidence (P : ProofComplexityPackage) where
  lengthBoundClosed : P.lengthBound = 42
  depthBoundClosed : P.depthBound = 7
  cutEliminationClosed : P.cutElimination
  normalizationAvailableClosed : P.normalizationAvailable

def ProofComplexityClosed (P : ProofComplexityPackage) : Prop :=
  P.lengthBound = 42 ∧ P.depthBound = 7 ∧ P.cutElimination ∧ P.normalizationAvailable

theorem proof_complexity_closed_from_evidence (P : ProofComplexityPackage) (E : ProofComplexityEvidence P) :
    ProofComplexityClosed P := by
  exact And.intro E.lengthBoundClosed (And.intro E.depthBoundClosed (And.intro E.cutEliminationClosed E.normalizationAvailableClosed))

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse