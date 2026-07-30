import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure DnaSegment where
  sequence : String
  secondaryStructure : Prop
  topologicalState : SupercoilState

structure TopoisomeraseBindingDomain where
  domainName : String
  bindingAffinity : ℝ
  specificity : Prop
  bindingAffinityPositive : bindingAffinity > 0
  specificityTerm : specificity

structure SubstrateRecognitionEvent where
  dnaSegment : DnaSegment
  bindingDomain : TopoisomeraseBindingDomain
  recognitionSuccessful : Prop
  recognitionSuccessfulTerm : recognitionSuccessful

structure SubstrateRecognitionEvidence (S : SubstrateRecognitionEvent) where
  recognitionSuccessfulClosed : S.recognitionSuccessful

def SubstrateRecognitionClosed (S : SubstrateRecognitionEvent) : Prop :=
  S.recognitionSuccessful

theorem substrate_recognition_closed_from_evidence (S : SubstrateRecognitionEvent)
    (E : SubstrateRecognitionEvidence S) : SubstrateRecognitionClosed S :=
  E.recognitionSuccessfulClosed

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse