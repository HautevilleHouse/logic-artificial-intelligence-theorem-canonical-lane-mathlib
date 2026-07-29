import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure HerbrandStructurePackage where
  herbrandUniverse : Type u
  herbrandBase : Prop
  groundInstanceExistence : Prop
  herbrandTheorem : Prop
  groundInstanceExistenceTerm : groundInstanceExistence
  herbrandTheoremTerm : herbrandTheorem

structure HerbrandStructureEvidence (H : HerbrandStructurePackage) where
  herbrandBaseClosed : H.herbrandBase
  groundInstanceExistenceClosed : H.groundInstanceExistence
  herbrandTheoremClosed : H.herbrandTheorem

def HerbrandStructureClosed (H : HerbrandStructurePackage) : Prop :=
  H.herbrandBase ∧ H.groundInstanceExistence ∧ H.herbrandTheorem

theorem herbrand_structure_closed_from_evidence (H : HerbrandStructurePackage)
    (E : HerbrandStructureEvidence H) : HerbrandStructureClosed H :=
  And.intro E.herbrandBaseClosed
    (And.intro E.groundInstanceExistenceClosed E.herbrandTheoremClosed)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse