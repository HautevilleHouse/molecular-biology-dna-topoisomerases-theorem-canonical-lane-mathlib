import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure TopoisomeraseEnzymeStructure where
  dnaBindingDomain : Prop
  tyrosineActiveSite : Prop
  cleavageReligationMechanism : Prop
  strandPassageMechanism : Prop
  atpDependence : Prop

def TopoisomeraseEnzymeEvidence (E : TopoisomeraseEnzymeStructure) : Prop :=
  E.dnaBindingDomain ∧ E.tyrosineActiveSite ∧
  E.cleavageReligationMechanism ∧ E.strandPassageMechanism ∧
  E.atpDependence

structure SupercoilRegulation where
  positiveSupercoilRelaxation : Prop
  negativeSupercoilRelaxation : Prop
  decatenationActivity : Prop
  supercoilHomeostasis : Prop

def SupercoilRegulationEvidence (S : SupercoilRegulation) : Prop :=
  S.positiveSupercoilRelaxation ∧ S.negativeSupercoilRelaxation ∧
  S.decatenationActivity ∧ S.supercoilHomeostasis

structure TopoisomeraseStrandPassagePackage (E : TopoisomeraseEnzymeStructure) where
  cleavageComplexFormation : Prop
  strandPassageEvent : Prop
  religationCompletion : Prop
  topoisomerDistribution : Prop

def TopoisomeraseStrandPassageClosed {E : TopoisomeraseEnzymeStructure}
    (P : TopoisomeraseStrandPassagePackage E) : Prop :=
  P.cleavageComplexFormation ∧ P.strandPassageEvent ∧
  P.religationCompletion ∧ P.topoisomerDistribution

structure TopoisomeraseStrandPassageEvidence {E : TopoisomeraseEnzymeStructure}
    (P : TopoisomeraseStrandPassagePackage E) where
  cleavageComplexFormationClosed : P.cleavageComplexFormation
  strandPassageEventClosed : P.strandPassageEvent
  religationCompletionClosed : P.religationCompletion
  topoisomerDistributionClosed : P.topoisomerDistribution

theorem topoisomerase_strand_passage_closed_from_evidence
    {E : TopoisomeraseEnzymeStructure} (P : TopoisomeraseStrandPassagePackage E)
    (Ev : TopoisomeraseStrandPassageEvidence P) :
    TopoisomeraseStrandPassageClosed P := by
  exact And.intro Ev.cleavageComplexFormationClosed
    (And.intro Ev.strandPassageEventClosed
      (And.intro Ev.religationCompletionClosed Ev.topoisomerDistributionClosed))

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse