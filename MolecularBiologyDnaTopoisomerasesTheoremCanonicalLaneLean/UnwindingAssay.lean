import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure UnwindingAssay where
  topoisomeraseType : Type u
  dnaSubstrate : Type v
  unwindingRate : ℕ
  processivity : ℕ
  assayConditionsMet : Prop
  unwindingRateTerm : unwindingRate = 1
  processivityTerm : processivity ≥ 1000
  assayConditionsMetTerm : assayConditionsMet

def UnwindingAssayClosed (U : UnwindingAssay) : Prop :=
  U.assayConditionsMet ∧ U.unwindingRate = 1 ∧ U.processivity ≥ 1000

theorem unwinding_assay_closed (U : UnwindingAssay) : UnwindingAssayClosed U := by
  exact And.intro U.assayConditionsMetTerm (And.intro U.unwindingRateTerm U.processivityTerm)

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse
