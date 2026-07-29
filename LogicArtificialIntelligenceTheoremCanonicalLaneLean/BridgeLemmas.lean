import LogicArtificialIntelligenceTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LogicAIWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse