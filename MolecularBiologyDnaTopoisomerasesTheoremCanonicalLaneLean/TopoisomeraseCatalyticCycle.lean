import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean.TopoisomeraseCleavageComplex

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseCatalyticCyclePackage where
  cleavageComplex : TopoisomeraseCleavageComplexPackage
  dnaBinding : Prop
  atpHydrolysis : Prop
  strandPassage : Prop
  religation : Prop
  enzymeRelease : Prop
  cycleCompleted : Prop

structure TopoisomeraseCatalyticCycleEvidence (C : TopoisomeraseCatalyticCyclePackage) where
  dnaBindingClosed : C.dnaBinding
  atpHydrolysisClosed : C.atpHydrolysis
  strandPassageClosed : C.strandPassage
  religationClosed : C.religation
  enzymeReleaseClosed : C.enzymeRelease
  cycleCompletedClosed : C.cycleCompleted

def TopoisomeraseCatalyticCycleClosed (C : TopoisomeraseCatalyticCyclePackage) : Prop :=
  C.dnaBinding ∧ C.atpHydrolysis ∧ C.strandPassage ∧ C.religation ∧ C.enzymeRelease ∧ C.cycleCompleted

theorem topoisomerase_catalytic_cycle_closed_from_evidence (C : TopoisomeraseCatalyticCyclePackage) (E : TopoisomeraseCatalyticCycleEvidence C) :
    TopoisomeraseCatalyticCycleClosed C := by
  exact And.intro E.dnaBindingClosed
    (And.intro E.atpHydrolysisClosed
      (And.intro E.strandPassageClosed
        (And.intro E.religationClosed
          (And.intro E.enzymeReleaseClosed E.cycleCompletedClosed))))

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse