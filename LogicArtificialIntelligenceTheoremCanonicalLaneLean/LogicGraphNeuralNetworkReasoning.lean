import LogicArtificialIntelligenceTheoremCanonicalLaneLean.LogicAdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure GraphNeuralNetworkReasoningPackage where
  graphStructure : Type
  messagePassingLayers : Nat
  nodeFeatureDimension : Nat
  relationalInductionBias : Prop
  logicalEntailmentPreservation : Prop
  convergenceGuarantee : Prop

structure GraphNeuralNetworkReasoningEvidence
    (G : GraphNeuralNetworkReasoningPackage) where
  relationalInductionBiasClosed : G.relationalInductionBias
  logicalEntailmentPreservationClosed : G.logicalEntailmentPreservation
  convergenceGuaranteeClosed : G.convergenceGuarantee

def GraphNeuralNetworkReasoningClosed
    (G : GraphNeuralNetworkReasoningPackage) : Prop :=
  G.relationalInductionBias ∧ G.logicalEntailmentPreservation ∧ G.convergenceGuarantee

theorem graph_neural_network_reasoning_closed_from_evidence
    (G : GraphNeuralNetworkReasoningPackage)
    (E : GraphNeuralNetworkReasoningEvidence G) : GraphNeuralNetworkReasoningClosed G := by
  exact And.intro E.relationalInductionBiasClosed
    (And.intro E.logicalEntailmentPreservationClosed E.convergenceGuaranteeClosed)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse