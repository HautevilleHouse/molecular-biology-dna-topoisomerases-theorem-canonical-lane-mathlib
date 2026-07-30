import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseMechanismPackage (S : TopoisomeraseAdmittedObject) where
  dnaBending : Prop
  gateSegmentBinding : Prop
  strandPassageCatalysis : Prop
  religationStep : Prop
  supercoilingRelaxation : Prop

def mechanismClosed (M : TopoisomeraseMechanismPackage) : Prop :=
  M.dnaBending ∧ M.gateSegmentBinding ∧ M.strandPassageCatalysis ∧
  M.religationStep ∧ M.supercoilingRelaxation

theorem mechanism_evidence_to_bridge (M : TopoisomeraseMechanismPackage) :
    mechanismClosed M → TopoisomeraseWitnessClosed M.substrateType := by
  intro h
  exact h.1

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse