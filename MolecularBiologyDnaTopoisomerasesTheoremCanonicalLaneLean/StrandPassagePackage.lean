import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure StrandPassagePackage (S : TopoisomeraseAdmittedObject) where
  supercoilingDistribution : Prop
  duplexStability : Prop
  topoIIBinding : Prop
  strandCleavage : Prop
  strandReligion : Prop
  atpHydrolysis : Prop

def strandPassageEvidence (P : StrandPassagePackage) : Prop :=
  P.supercoilingDistribution ∧ P.duplexStability ∧ P.topoIIBinding ∧
  P.strandCleavage ∧ P.strandReligion ∧ P.atpHydrolysis

theorem strand_passage_evidence_intro (P : StrandPassagePackage) :
    strandPassageEvidence P → TopoisomeraseWitnessClosed P.substrateType := by
  intro h
  exact h.1

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse