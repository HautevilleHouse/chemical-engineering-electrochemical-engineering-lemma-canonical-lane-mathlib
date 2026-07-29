import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrochemicalReactionKineticsPackage where
  reactionRateConstant : Type u
  activationEnergy : Type v
  temperatureDependence : Prop
  butlerVolmerEquation : Prop
  exchangeCurrentDensity : Prop
  chargeTransferCoefficient : Prop
  electrodePotential : Prop
  overpotential : Prop
  faradaicCurrent : Prop
  concentrationOverpotential : Prop

structure ElectrochemicalReactionKineticsEvidence (R : ElectrochemicalReactionKineticsPackage) where
  temperatureDependenceClosed : R.temperatureDependence
  butlerVolmerEquationClosed : R.butlerVolmerEquation
  exchangeCurrentDensityClosed : R.exchangeCurrentDensity
  chargeTransferCoefficientClosed : R.chargeTransferCoefficient
  electrodePotentialClosed : R.electrodePotential
  overpotentialClosed : R.overpotential
  faradaicCurrentClosed : R.faradaicCurrent
  concentrationOverpotentialClosed : R.concentrationOverpotential

def ElectrochemicalReactionKineticsClosed (R : ElectrochemicalReactionKineticsPackage) : Prop :=
  R.temperatureDependence ∧ R.butlerVolmerEquation ∧ R.exchangeCurrentDensity ∧
  R.chargeTransferCoefficient ∧ R.electrodePotential ∧ R.overpotential ∧
  R.faradaicCurrent ∧ R.concentrationOverpotential

theorem electrochemical_reaction_kinetics_closed_from_evidence
    (R : ElectrochemicalReactionKineticsPackage) (E : ElectrochemicalReactionKineticsEvidence R) :
    ElectrochemicalReactionKineticsClosed R := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.butlerVolmerEquationClosed
      (And.intro E.exchangeCurrentDensityClosed
        (And.intro E.chargeTransferCoefficientClosed
          (And.intro E.electrodePotentialClosed
            (And.intro E.overpotentialClosed
              (And.intro E.faradaicCurrentClosed E.concentrationOverpotentialClosed))))))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse