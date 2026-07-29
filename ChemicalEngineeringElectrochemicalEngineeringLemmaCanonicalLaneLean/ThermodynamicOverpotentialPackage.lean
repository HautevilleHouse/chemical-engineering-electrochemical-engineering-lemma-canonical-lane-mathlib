import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ThermodynamicOverpotentialPackage where
  nernstEquation : Prop
  equilibriumPotential : Prop
  temperatureEffect : Prop
  concentrationDependence : Prop

structure ThermodynamicOverpotentialEvidence (T : ThermodynamicOverpotentialPackage) where
  nernstEquationClosed : T.nernstEquation
  equilibriumPotentialClosed : T.equilibriumPotential
  temperatureEffectClosed : T.temperatureEffect
  concentrationDependenceClosed : T.concentrationDependence

def ThermodynamicOverpotentialClosed (T : ThermodynamicOverpotentialPackage) : Prop :=
  T.nernstEquation ∧ T.equilibriumPotential ∧
  T.temperatureEffect ∧ T.concentrationDependence

theorem thermodynamic_overpotential_closed_from_evidence
    (T : ThermodynamicOverpotentialPackage)
    (Ev : ThermodynamicOverpotentialEvidence T) : ThermodynamicOverpotentialClosed T := by
  exact And.intro Ev.nernstEquationClosed
    (And.intro Ev.equilibriumPotentialClosed
      (And.intro Ev.temperatureEffectClosed
        Ev.concentrationDependenceClosed))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse