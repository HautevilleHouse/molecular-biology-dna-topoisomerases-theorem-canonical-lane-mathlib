import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure InhibitorMolecule where
  name : String
  bindingMode : Prop
  inhibitoryMechanism : Prop
  bindingModeTerm : bindingMode
  inhibitoryMechanismTerm : inhibitoryMechanism

structure DrugTargetComplex where
  topoisomerase : String
  inhibitor : InhibitorMolecule
  complexFormed : Prop
  catalyticActivityBlocked : Prop
  complexFormedTerm : complexFormed
  catalyticActivityBlockedTerm : catalyticActivityBlocked

structure InhibitionEvidence (D : DrugTargetComplex) where
  complexFormedClosed : D.complexFormed
  catalyticActivityBlockedClosed : D.catalyticActivityBlocked

def InhibitionClosed (D : DrugTargetComplex) : Prop :=
  D.complexFormed ∧ D.catalyticActivityBlocked

theorem inhibition_closed_from_evidence (D : DrugTargetComplex)
    (E : InhibitionEvidence D) : InhibitionClosed D :=
  And.intro E.complexFormedClosed E.catalyticActivityBlockedClosed

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse