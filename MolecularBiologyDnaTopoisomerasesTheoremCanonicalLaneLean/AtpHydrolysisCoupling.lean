import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure AtpBindingEvent where
  atpBound : Prop
  bindingSiteOccupied : Prop
  atpBoundTerm : atpBound
  bindingSiteOccupiedTerm : bindingSiteOccupied

structure HydrolysisEvent where
  atpCleaved : Prop
  energyReleased : ℝ
  atpCleavedTerm : atpCleaved
  energyReleasedPositive : energyReleased > 0

structure ConformationalChangeCoupled where
  hydrolysis : HydrolysisEvent
  inducedConformationalChange : Prop
  changeDrivesReaction : Prop
  inducedConformationalChangeTerm : inducedConformationalChange
  changeDrivesReactionTerm : changeDrivesReaction

structure AtpHydrolysisEvidence (C : ConformationalChangeCoupled) where
  inducedConformationalChangeClosed : C.inducedConformationalChange
  changeDrivesReactionClosed : C.changeDrivesReaction

def AtpHydrolysisCouplingClosed (C : ConformationalChangeCoupled) : Prop :=
  C.inducedConformationalChange ∧ C.changeDrivesReaction

theorem atp_hydrolysis_coupling_closed_from_evidence (C : ConformationalChangeCoupled)
    (E : AtpHydrolysisEvidence C) : AtpHydrolysisCouplingClosed C :=
  And.intro E.inducedConformationalChangeClosed E.changeDrivesReactionClosed

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse