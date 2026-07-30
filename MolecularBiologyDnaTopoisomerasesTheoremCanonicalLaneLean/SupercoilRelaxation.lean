import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure SupercoilState where
  linkingNumber : ℤ
  writhe : ℝ
  twist : ℝ
  superhelicalDensity : ℝ
  superhelicalDensityNonNegative : superhelicalDensity ≥ 0

structure SupercoilRelaxationProcess where
  initialSupercoil : SupercoilState
  finalSupercoil : SupercoilState
  relaxationCatalyzed : Prop
  linkedToTopoisomeraseType : Prop
  relaxationCatalyzedTerm : relaxationCatalyzed
  linkedToTopoisomeraseTypeTerm : linkedToTopoisomeraseType

structure SupercoilRelaxationEvidence (R : SupercoilRelaxationProcess) where
  relaxationCatalyzedClosed : R.relaxationCatalyzed
  linkedToTopoisomeraseTypeClosed : R.linkedToTopoisomeraseType

def SupercoilRelaxationClosed (R : SupercoilRelaxationProcess) : Prop :=
  R.relaxationCatalyzed ∧ R.linkedToTopoisomeraseType

theorem supercoil_relaxation_closed_from_evidence (R : SupercoilRelaxationProcess)
    (E : SupercoilRelaxationEvidence R) : SupercoilRelaxationClosed R :=
  And.intro E.relaxationCatalyzedClosed E.linkedToTopoisomeraseTypeClosed

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse