import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseSupercoilingRegulationPackage where
  genome : Type
  supercoilingSensors : Type
  topoisomeraseIAction : Prop
  topoisomeraseIIAction : Prop
  steadyStateSupercoilingDensity : ℝ
  regulationFeedbackLoop : Prop

structure TopoisomeraseSupercoilingRegulationEvidence (R : TopoisomeraseSupercoilingRegulationPackage) where
  topoisomeraseIActionClosed : R.topoisomeraseIAction
  topoisomeraseIIActionClosed : R.topoisomeraseIIAction
  steadyStateSupercoilingDensityClosed : R.steadyStateSupercoilingDensity = 0.07
  regulationFeedbackLoopClosed : R.regulationFeedbackLoop

def TopoisomeraseSupercoilingRegulationClosed (R : TopoisomeraseSupercoilingRegulationPackage) : Prop :=
  R.topoisomeraseIAction ∧ R.topoisomeraseIIAction ∧ R.steadyStateSupercoilingDensity = 0.07 ∧ R.regulationFeedbackLoop

theorem topoisomerase_supercoiling_regulation_closed_from_evidence (R : TopoisomeraseSupercoilingRegulationPackage) (E : TopoisomeraseSupercoilingRegulationEvidence R) :
    TopoisomeraseSupercoilingRegulationClosed R := by
  exact And.intro E.topoisomeraseIActionClosed
    (And.intro E.topoisomeraseIIActionClosed
      (And.intro E.steadyStateSupercoilingDensityClosed E.regulationFeedbackLoopClosed))

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse