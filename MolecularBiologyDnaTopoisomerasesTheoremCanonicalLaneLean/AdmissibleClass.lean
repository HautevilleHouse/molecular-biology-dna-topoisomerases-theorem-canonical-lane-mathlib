import HautevilleHouse.MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DnaTopoisomerasesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DnaTopoisomerasesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse