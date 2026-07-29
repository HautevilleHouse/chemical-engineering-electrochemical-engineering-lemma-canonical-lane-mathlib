import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrodeKineticsPackage where
  reactionRate : Prop
  overpotential : Prop
  currentDensity : Prop
  chargeTransferCoefficient : Prop
  butlerVolmerEquation : Prop

structure ElectrodeKineticsEvidence (K : ElectrodeKineticsPackage) where
  reactionRateClosed : K.reactionRate
  overpotentialClosed : K.overpotential
  currentDensityClosed : K.currentDensity
  chargeTransferCoefficientClosed : K.chargeTransferCoefficient
  butlerVolmerEquationClosed : K.butlerVolmerEquation

def ElectrodeKineticsClosed (K : ElectrodeKineticsPackage) : Prop :=
  K.reactionRate ∧ K.overpotential ∧ K.currentDensity ∧ K.chargeTransferCoefficient ∧ K.butlerVolmerEquation

theorem electrode_kinetics_closed_from_evidence (K : ElectrodeKineticsPackage) (E : ElectrodeKineticsEvidence K) : ElectrodeKineticsClosed K := by
  exact And.intro E.reactionRateClosed (And.intro E.overpotentialClosed (And.intro E.currentDensityClosed (And.intro E.chargeTransferCoefficientClosed E.butlerVolmerEquationClosed)))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse