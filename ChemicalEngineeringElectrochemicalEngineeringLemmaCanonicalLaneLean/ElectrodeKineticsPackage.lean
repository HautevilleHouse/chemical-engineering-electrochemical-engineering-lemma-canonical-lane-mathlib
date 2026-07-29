import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrodeKineticsPackage where
  faradaicReaction : Prop
  butlerVolmerEquation : Prop
  exchangeCurrentDensity : Prop
  activationOverpotential : Prop
  chargeTransferResistance : Prop

structure ElectrodeKineticsEvidence (E : ElectrodeKineticsPackage) where
  faradaicReactionClosed : E.faradaicReaction
  butlerVolmerEquationClosed : E.butlerVolmerEquation
  exchangeCurrentDensityClosed : E.exchangeCurrentDensity
  activationOverpotentialClosed : E.activationOverpotential
  chargeTransferResistanceClosed : E.chargeTransferResistance

def ElectrodeKineticsClosed (E : ElectrodeKineticsPackage) : Prop :=
  E.faradaicReaction ∧ E.butlerVolmerEquation ∧
  E.exchangeCurrentDensity ∧ E.activationOverpotential ∧
  E.chargeTransferResistance

theorem electrode_kinetics_closed_from_evidence (E : ElectrodeKineticsPackage)
    (Ev : ElectrodeKineticsEvidence E) : ElectrodeKineticsClosed E := by
  exact And.intro Ev.faradaicReactionClosed
    (And.intro Ev.butlerVolmerEquationClosed
      (And.intro Ev.exchangeCurrentDensityClosed
        (And.intro Ev.activationOverpotentialClosed
          Ev.chargeTransferResistanceClosed)))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse