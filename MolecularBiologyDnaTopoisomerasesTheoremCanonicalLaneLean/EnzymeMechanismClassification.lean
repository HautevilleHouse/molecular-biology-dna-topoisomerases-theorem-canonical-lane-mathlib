import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

/-!
# Enzyme Mechanism Classification Package

This module formalizes type I and type II topoisomerase mechanisms.
-/

structure EnzymeMechanismClassificationPackage where
  topoI : Type
  topoII : Type
  singleStrandBreak : Prop
  doubleStrandBreak : Prop
  atpDependence : Prop
  strandPassageMechanism : Prop

structure EnzymeMechanismClassificationEvidence (E : EnzymeMechanismClassificationPackage) where
  singleStrandBreakClosed : E.singleStrandBreak
  doubleStrandBreakClosed : E.doubleStrandBreak
  atpDependenceClosed : E.atpDependence
  strandPassageMechanismClosed : E.strandPassageMechanism

def EnzymeMechanismClassificationClosed (E : EnzymeMechanismClassificationPackage) : Prop :=
  E.singleStrandBreak ∧ E.doubleStrandBreak ∧ E.atpDependence ∧ E.strandPassageMechanism

theorem enzyme_mechanism_classification_closed_from_evidence
    (E : EnzymeMechanismClassificationPackage) (Ev : EnzymeMechanismClassificationEvidence E) :
    EnzymeMechanismClassificationClosed E := by
  exact And.intro Ev.singleStrandBreakClosed
    (And.intro Ev.doubleStrandBreakClosed
      (And.intro Ev.atpDependenceClosed Ev.strandPassageMechanismClosed))

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse