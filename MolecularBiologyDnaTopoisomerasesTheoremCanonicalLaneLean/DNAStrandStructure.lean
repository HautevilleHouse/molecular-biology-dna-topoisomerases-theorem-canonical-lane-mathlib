import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure DnaStrandStructure where
  strandSequence : Type u
  basePairing : Prop
  doubleHelixFormation : Prop
  supercoilingState : Prop
  basePairingTerm : basePairing
  doubleHelixFormationTerm : doubleHelixFormation
  supercoilingStateTerm : supercoilingState

structure DnaStrandEvidence (D : DnaStrandStructure) where
  basePairingClosed : D.basePairing
  doubleHelixFormationClosed : D.doubleHelixFormation
  supercoilingStateClosed : D.supercoilingState

def DnaStrandClosed (D : DnaStrandStructure) : Prop :=
  D.basePairing ∧ D.doubleHelixFormation ∧ D.supercoilingState

theorem dna_strand_closed_from_evidence (D : DnaStrandStructure) (E : DnaStrandEvidence D) :
    DnaStrandClosed D := by
  exact And.intro E.basePairingClosed (And.intro E.doubleHelixFormationClosed E.supercoilingStateClosed)

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse
