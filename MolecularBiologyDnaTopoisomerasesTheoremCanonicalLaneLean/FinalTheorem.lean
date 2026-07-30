import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

def TopoisomeraseAdmissibleClass (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem topoisomerase_admissible_class_gate (A : AdmissibleClass) :
    TopoisomeraseAdmissibleClass A := A.gateWitness

def ConstrainedTopoisomeraseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topoisomerase_endgame (A : AdmissibleClass) :
    ConstrainedTopoisomeraseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse