import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure SupercoilingDynamics where
  linkingNumber : ℤ
  twist : ℤ
  writhe : ℤ
  linkingNumberConservation : Prop
  dynamicsEquation : linkingNumber = twist + writhe
  linkingNumberConservationTerm : linkingNumberConservation

def SupercoilingClosed (S : SupercoilingDynamics) : Prop :=
  S.linkingNumberConservation ∧ S.linkingNumber = S.twist + S.writhe

theorem supercoiling_closed (S : SupercoilingDynamics) : SupercoilingClosed S := by
  exact And.intro S.linkingNumberConservationTerm S.dynamicsEquation

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse
