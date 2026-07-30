import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure CamptothecinInhibition where
  topoisomeraseI : Prop
  drugBinding : Prop
  cleavageComplexStabilization : Prop
  dnaDamageInduction : Prop
  topoisomeraseITerm : topoisomeraseI
  drugBindingTerm : drugBinding
  cleavageComplexStabilizationTerm : cleavageComplexStabilization
  dnaDamageInductionTerm : dnaDamageInduction

def CamptothecinInhibitionClosed (C : CamptothecinInhibition) : Prop :=
  C.topoisomeraseI ∧ C.drugBinding ∧ C.cleavageComplexStabilization ∧ C.dnaDamageInduction

theorem camptothecin_inhibition_closed (C : CamptothecinInhibition) : CamptothecinInhibitionClosed C := by
  exact And.intro C.topoisomeraseITerm
    (And.intro C.drugBindingTerm
      (And.intro C.cleavageComplexStabilizationTerm C.dnaDamageInductionTerm))

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse
