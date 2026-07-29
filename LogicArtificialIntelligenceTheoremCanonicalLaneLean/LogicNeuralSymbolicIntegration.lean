import LogicArtificialIntelligenceTheoremCanonicalLaneLean.LogicAdmissibleClass

namespace HautevilleHouse
namespace LogicArtificialIntelligenceTheoremCanonicalLaneLean

structure NeuralSymbolicIntegrationPackage where
  symbolicEncoder : Type
  neuralDecoder : Type
  differentiableReasoning : Prop
  gradientGuarantee : Prop
  closureUnderBackprop : Prop

structure NeuralSymbolicIntegrationEvidence (N : NeuralSymbolicIntegrationPackage) where
  differentiableReasoningClosed : N.differentiableReasoning
  gradientGuaranteeClosed : N.gradientGuarantee
  closureUnderBackpropClosed : N.closureUnderBackprop

def NeuralSymbolicIntegrationClosed (N : NeuralSymbolicIntegrationPackage) : Prop :=
  N.differentiableReasoning ∧ N.gradientGuarantee ∧ N.closureUnderBackprop

theorem neural_symbolic_integration_closed_from_evidence
    (N : NeuralSymbolicIntegrationPackage)
    (E : NeuralSymbolicIntegrationEvidence N) : NeuralSymbolicIntegrationClosed N := by
  exact And.intro E.differentiableReasoningClosed
    (And.intro E.gradientGuaranteeClosed E.closureUnderBackpropClosed)

end LogicArtificialIntelligenceTheoremCanonicalLaneLean
end HautevilleHouse