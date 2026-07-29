import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure CutEliminationPackage where
  sequentCalculus : Type u
  cutRule : Prop
  cutElimination : Prop
  subformulaProperty : Prop
  cutRuleTerm : cutRule
  cutEliminationTerm : cutElimination
  subformulaPropertyTerm : subformulaProperty

structure CutEliminationEvidence (C : CutEliminationPackage) where
  cutRuleClosed : C.cutRule
  cutEliminationClosed : C.cutElimination
  subformulaPropertyClosed : C.subformulaProperty

def CutEliminationClosed (C : CutEliminationPackage) : Prop :=
  C.cutRule ∧ C.cutElimination ∧ C.subformulaProperty

theorem cut_elimination_closed_from_evidence (C : CutEliminationPackage)
    (E : CutEliminationEvidence C) : CutEliminationClosed C :=
  And.intro E.cutRuleClosed
    (And.intro E.cutEliminationClosed E.subformulaPropertyClosed)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse