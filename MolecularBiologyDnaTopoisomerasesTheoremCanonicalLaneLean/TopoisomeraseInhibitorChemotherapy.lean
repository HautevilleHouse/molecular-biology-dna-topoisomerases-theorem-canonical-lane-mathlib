import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseInhibitorBinding where
  inhibitorMolecule : Prop
  enzymeBindingAffinity : Prop
  cleavageComplexStabilization : Prop
  dnaDamageInduction : Prop

def TopoisomeraseInhibitorBindingEvidence (I : TopoisomeraseInhibitorBinding) : Prop :=
  I.inhibitorMolecule ∧ I.enzymeBindingAffinity ∧
  I.cleavageComplexStabilization ∧ I.dnaDamageInduction

structure ChemotherapeuticEfficacy where
  cellCycleArrest : Prop
  apoptosisInduction : Prop
  selectivityForCancerCells : Prop

def ChemotherapeuticEfficacyEvidence (C : ChemotherapeuticEfficacy) : Prop :=
  C.cellCycleArrest ∧ C.apoptosisInduction ∧
  C.selectivityForCancerCells

structure TopoisomeraseInhibitorPackage
    (I : TopoisomeraseInhibitorBinding) (C : ChemotherapeuticEfficacy) where
  drugTargetInteraction : Prop
  antitumorActivity : Prop

def TopoisomeraseInhibitorClosed {I : TopoisomeraseInhibitorBinding}
    {C : ChemotherapeuticEfficacy} (P : TopoisomeraseInhibitorPackage I C) : Prop :=
  P.drugTargetInteraction ∧ P.antitumorActivity

structure TopoisomeraseInhibitorEvidence
    {I : TopoisomeraseInhibitorBinding} {C : ChemotherapeuticEfficacy}
    (P : TopoisomeraseInhibitorPackage I C) where
  drugTargetInteractionClosed : P.drugTargetInteraction
  antitumorActivityClosed : P.antitumorActivity

theorem topoisomerase_inhibitor_closed_from_evidence
    {I : TopoisomeraseInhibitorBinding} {C : ChemotherapeuticEfficacy}
    (P : TopoisomeraseInhibitorPackage I C)
    (Ev : TopoisomeraseInhibitorEvidence P) :
    TopoisomeraseInhibitorClosed P := by
  exact And.intro Ev.drugTargetInteractionClosed Ev.antitumorActivityClosed

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse