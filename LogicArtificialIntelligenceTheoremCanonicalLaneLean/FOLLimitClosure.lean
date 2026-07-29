import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure FOLLimitClosure where
  languageSignature : Type
  entailmentRelation : Type
  compactnessHolds : Prop
  upwardLowenheimSkolem : Prop
  compactnessTerm : compactnessHolds
  lowenheimSkolemTerm : upwardLowenheimSkolem

def FOLLimitClosureClosed (F : FOLLimitClosure) : Prop :=
  F.compactnessHolds ∧ F.upwardLowenheimSkolem

theorem fol_limit_closure_closed (F : FOLLimitClosure) : FOLLimitClosureClosed F :=
  And.intro F.compactnessTerm F.lowenheimSkolemTerm

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse