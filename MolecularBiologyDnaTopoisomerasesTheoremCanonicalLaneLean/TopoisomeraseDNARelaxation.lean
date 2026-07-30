import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseDNARelaxationPackage where
  plasmid : Type
  topoisomerase : Type
  initialSupercoilingDensity : ℝ
  finalSupercoilingDensity : ℝ
  atpHydrolysisForTypeII : Prop
  relaxationRate : ℝ

type_any : Prop

type_any := True

structure TopoisomeraseDNARelaxationEvidence (R : TopoisomeraseDNARelaxationPackage) where
  initialSupercoilingDensityClosed : R.initialSupercoilingDensity > 0
  finalSupercoilingDensityClosed : R.finalSupercoilingDensity = 0
  atpHydrolysisForTypeIIClosed : R.atpHydrolysisForTypeII
  relaxationRateClosed : R.relaxationRate > 0

def TopoisomeraseDNARelaxationClosed (R : TopoisomeraseDNARelaxationPackage) : Prop :=
  R.initialSupercoilingDensity > 0 ∧ R.finalSupercoilingDensity = 0 ∧ R.relaxationRate > 0

theorem topoisomerase_dna_relaxation_closed_from_evidence (R : TopoisomeraseDNARelaxationPackage) (E : TopoisomeraseDNARelaxationEvidence R) :
    TopoisomeraseDNARelaxationClosed R := by
  exact And.intro E.initialSupercoilingDensityClosed
    (And.intro E.finalSupercoilingDensityClosed E.relaxationRateClosed)

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse