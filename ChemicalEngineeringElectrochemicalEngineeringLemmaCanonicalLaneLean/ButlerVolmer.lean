import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean.ElectrodeKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ButlerVolmerPackage (E : ElectrodeKineticsPackage) where
  faradaicCurrent : Prop
  overpotentialRelation : Prop
  symmetryFactorCoherence : Prop
  exchangeCurrentCoherence : Prop

structure ButlerVolmerEvidence {E : ElectrodeKineticsPackage} (B : ButlerVolmerPackage E) where
  faradaicCurrentClosed : B.faradaicCurrent
  overpotentialRelationClosed : B.overpotentialRelation
  symmetryFactorCoherenceClosed : B.symmetryFactorCoherence
  exchangeCurrentCoherenceClosed : B.exchangeCurrentCoherence

def ButlerVolmerClosed {E : ElectrodeKineticsPackage} (B : ButlerVolmerPackage E) : Prop :=
  B.faradaicCurrent ∧ B.overpotentialRelation ∧
  B.symmetryFactorCoherence ∧ B.exchangeCurrentCoherence

theorem butler_volmer_closed_from_evidence {E : ElectrodeKineticsPackage}
    (B : ButlerVolmerPackage E) (Ev : ButlerVolmerEvidence B) :
    ButlerVolmerClosed B := by
  exact And.intro Ev.faradaicCurrentClosed
    (And.intro Ev.overpotentialRelationClosed
      (And.intro Ev.symmetryFactorCoherenceClosed Ev.exchangeCurrentCoherenceClosed))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
