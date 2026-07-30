import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean

structure DnaCleavageEvent where
  cleavageSite : String
  cleavageType : Prop
  covalentIntermediateFormed : Prop
  cleavageTypeTerm : cleavageType
  covalentIntermediateFormedTerm : covalentIntermediateFormed

structure DnaReligationEvent where
  religationSite : String
  religationType : Prop
  phosphodiesterBondRestored : Prop
  religationTypeTerm : religationType
  phosphodiesterBondRestoredTerm : phosphodiesterBondRestored

structure CleavageReligationCycle where
  cleavage : DnaCleavageEvent
  religation : DnaReligationEvent
  cycleMaintainsIntegrity : Prop
  noPermanentDamage : Prop
  cycleMaintainsIntegrityTerm : cycleMaintainsIntegrity
  noPermanentDamageTerm : noPermanentDamage

structure CleavageReligationEvidence (C : CleavageReligationCycle) where
  cycleMaintainsIntegrityClosed : C.cycleMaintainsIntegrity
  noPermanentDamageClosed : C.noPermanentDamage

def CleavageReligationClosed (C : CleavageReligationCycle) : Prop :=
  C.cycleMaintainsIntegrity ∧ C.noPermanentDamage

theorem cleavage_religation_closed_from_evidence (C : CleavageReligationCycle)
    (E : CleavageReligationEvidence C) : CleavageReligationClosed C :=
  And.intro E.cycleMaintainsIntegrityClosed E.noPermanentDamageClosed

end MolecularBiologyDnaTopoisomerasesTheoremCanonicalLaneLean
end HautevilleHouse