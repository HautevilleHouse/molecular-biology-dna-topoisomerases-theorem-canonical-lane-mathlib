import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseAdmittedObject where
  substrateType : Type u
  supercoilingState : substrateType → Prop
  topoEnzymePresent : Prop
  strandPassageEvent : Prop
  conclusion : supercoilingState substrateType ∧ topoEnzymePresent

def TopoisomeraseWitnessClosed (O : TopoisomeraseAdmittedObject) : Prop :=
  O.supercoilingState O.substrateType ∧ O.topoEnzymePresent

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse