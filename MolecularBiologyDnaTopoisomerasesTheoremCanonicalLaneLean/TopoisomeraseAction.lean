import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseAction where
  enzymeBinding : Prop
  strandCleavage : Prop
  strandPassage : Prop
  religation : Prop
  supercoilRelaxation : Prop
  enzymeBindingTerm : enzymeBinding
  strandCleavageTerm : strandCleavage
  strandPassageTerm : strandPassage
  religationTerm : religation
  supercoilRelaxationTerm : supercoilRelaxation

structure TopoisomeraseEvidence (T : TopoisomeraseAction) where
  enzymeBindingClosed : T.enzymeBinding
  strandCleavageClosed : T.strandCleavage
  strandPassageClosed : T.strandPassage
  religationClosed : T.religation
  supercoilRelaxationClosed : T.supercoilRelaxation

def TopoisomeraseClosed (T : TopoisomeraseAction) : Prop :=
  T.enzymeBinding ∧ T.strandCleavage ∧ T.strandPassage ∧ T.religation ∧ T.supercoilRelaxation

theorem topoisomerase_closed_from_evidence (T : TopoisomeraseAction) (E : TopoisomeraseEvidence T) :
    TopoisomeraseClosed T := by
  exact And.intro E.enzymeBindingClosed
    (And.intro E.strandCleavageClosed
      (And.intro E.strandPassageClosed
        (And.intro E.religationClosed E.supercoilRelaxationClosed)))

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse
