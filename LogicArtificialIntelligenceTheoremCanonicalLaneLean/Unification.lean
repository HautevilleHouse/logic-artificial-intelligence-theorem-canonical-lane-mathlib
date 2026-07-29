import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure UnificationPackage where
  term : Type u
  substitution : Type v
  mostGeneralUnifier : Prop
  occursCheck : Prop
  mguExistence : Prop
  mguExistenceTerm : mguExistence
  occursCheckTerm : occursCheck

structure UnificationEvidence (U : UnificationPackage) where
  mostGeneralUnifierClosed : U.mostGeneralUnifier
  mguExistenceClosed : U.mguExistence
  occursCheckClosed : U.occursCheck

def UnificationClosed (U : UnificationPackage) : Prop :=
  U.mostGeneralUnifier ∧ U.mguExistence ∧ U.occursCheck

theorem unification_closed_from_evidence (U : UnificationPackage)
    (E : UnificationEvidence U) : UnificationClosed U :=
  And.intro E.mostGeneralUnifierClosed
    (And.intro E.mguExistenceClosed E.occursCheckClosed)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse