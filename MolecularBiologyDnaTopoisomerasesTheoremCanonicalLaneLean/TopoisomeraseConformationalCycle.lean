import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseConformationalState where
  segmentPassageMode : Prop
  gateOpening : Prop
  gateClosing : Prop
  strandTransfer : Prop
  relaxationStep : Prop
  segmentPassageModeClosed : segmentPassageMode
  gateOpeningClosed : gateOpening
  gateClosingClosed : gateClosing
  strandTransferClosed : strandTransfer
  relaxationStepClosed : relaxationStep

structure TopoisomeraseConformationalCycle where
  states : List TopoisomeraseConformationalState
  cycleStart : TopoisomeraseConformationalState
  cycleEnd : TopoisomeraseConformationalState
  cycleCompletes : Prop
  linkedToDnaRelaxation : Prop
  cycleCompletesTerm : cycleCompletes
  linkedToDnaRelaxationTerm : linkedToDnaRelaxation

structure ConformationalCycleEvidence (C : TopoisomeraseConformationalCycle) where
  cycleCompletesClosed : C.cycleCompletes
  linkedToDnaRelaxationClosed : C.linkedToDnaRelaxation

def ConformationalCycleClosed (C : TopoisomeraseConformationalCycle) : Prop :=
  C.cycleCompletes ∧ C.linkedToDnaRelaxation

theorem conformational_cycle_closed_from_evidence (C : TopoisomeraseConformationalCycle)
    (E : ConformationalCycleEvidence C) : ConformationalCycleClosed C :=
  And.intro E.cycleCompletesClosed E.linkedToDnaRelaxationClosed

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse