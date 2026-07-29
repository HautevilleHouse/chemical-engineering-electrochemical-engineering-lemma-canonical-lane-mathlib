import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrodeKineticsPackage where
  reactionMechanism : Prop
  chargeTransferCoefficient : Prop
  exchangeCurrentDensity : Prop
  activationOverpotential : Prop

structure ElectrodeKineticsEvidence (E : ElectrodeKineticsPackage) where
  reactionMechanismClosed : E.reactionMechanism
  chargeTransferCoefficientClosed : E.chargeTransferCoefficient
  exchangeCurrentDensityClosed : E.exchangeCurrentDensity
  activationOverpotentialClosed : E.activationOverpotential

def ElectrodeKineticsClosed (E : ElectrodeKineticsPackage) : Prop :=
  E.reactionMechanism ∧ E.chargeTransferCoefficient ∧
  E.exchangeCurrentDensity ∧ E.activationOverpotential

theorem electrode_kinetics_closed_from_evidence (E : ElectrodeKineticsPackage)
    (Ev : ElectrodeKineticsEvidence E) : ElectrodeKineticsClosed E := by
  exact And.intro Ev.reactionMechanismClosed
    (And.intro Ev.chargeTransferCoefficientClosed
      (And.intro Ev.exchangeCurrentDensityClosed Ev.activationOverpotentialClosed))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
