import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseCleavageComplexPackage where
  enzyme : Type
  dna : Type
  cleavageSite : Type
  covalentIntermediate : Prop
  reversibleCleavage : Prop
  religationCompetent : Prop
  strandPassageCompetent : Prop

structure TopoisomeraseCleavageComplexEvidence (C : TopoisomeraseCleavageComplexPackage) where
  covalentIntermediateClosed : C.covalentIntermediate
  reversibleCleavageClosed : C.reversibleCleavage
  religationCompetentClosed : C.religationCompetent
  strandPassageCompetentClosed : C.strandPassageCompetent

def TopoisomeraseCleavageComplexClosed (C : TopoisomeraseCleavageComplexPackage) : Prop :=
  C.covalentIntermediate ∧ C.reversibleCleavage ∧ C.religationCompetent ∧ C.strandPassageCompetent

theorem topoisomerase_cleavage_complex_closed_from_evidence (C : TopoisomeraseCleavageComplexPackage) (E : TopoisomeraseCleavageComplexEvidence C) :
    TopoisomeraseCleavageComplexClosed C := by
  exact And.intro E.covalentIntermediateClosed
    (And.intro E.reversibleCleavageClosed
      (And.intro E.religationCompetentClosed E.strandPassageCompetentClosed))

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse