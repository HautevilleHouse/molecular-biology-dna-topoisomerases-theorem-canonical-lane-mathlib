import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

/-!
# Decatenation and Unlinking Package

This module formalizes the decatenation and unlinking of DNA catenanes and knots by topoisomerases.
-/

structure DecatenationAndUnlinkingPackage where
  catenane : Type
  knot : Type
  decatenation : Prop
  unknotting : Prop
  topoIIAction : Prop
  siteSpecificRecombination : Prop

structure DecatenationAndUnlinkingEvidence (D : DecatenationAndUnlinkingPackage) where
  decatenationClosed : D.decatenation
  unknottingClosed : D.unknotting
  topoIIActionClosed : D.topoIIAction

def DecatenationAndUnlinkingClosed (D : DecatenationAndUnlinkingPackage) : Prop :=
  D.decatenation ∧ D.unknotting ∧ D.topoIIAction

theorem decatenation_unlinking_closed_from_evidence
    (D : DecatenationAndUnlinkingPackage) (E : DecatenationAndUnlinkingEvidence D) :
    DecatenationAndUnlinkingClosed D := by
  exact And.intro E.decatenationClosed
    (And.intro E.unknottingClosed E.topoIIActionClosed)

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse