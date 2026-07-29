import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrochemicalThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  nernstEquation : Prop
  equilibriumPotential : Prop
  activityCoefficient : Prop
  temperatureDependence : Prop
  pressureDependence : Prop

structure ElectrochemicalThermodynamicsEvidence (T : ElectrochemicalThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  nernstEquationClosed : T.nernstEquation
  equilibriumPotentialClosed : T.equilibriumPotential
  activityCoefficientClosed : T.activityCoefficient
  temperatureDependenceClosed : T.temperatureDependence
  pressureDependenceClosed : T.pressureDependence

def ElectrochemicalThermodynamicsClosed (T : ElectrochemicalThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.nernstEquation ∧
  T.equilibriumPotential ∧ T.activityCoefficient ∧
  T.temperatureDependence ∧ T.pressureDependence

theorem electrochemical_thermodynamics_closed_from_evidence
    (T : ElectrochemicalThermodynamicsPackage)
    (Ev : ElectrochemicalThermodynamicsEvidence T) :
    ElectrochemicalThermodynamicsClosed T := by
  exact And.intro Ev.gibbsFreeEnergyClosed
    (And.intro Ev.nernstEquationClosed
      (And.intro Ev.equilibriumPotentialClosed
        (And.intro Ev.activityCoefficientClosed
          (And.intro Ev.temperatureDependenceClosed
            Ev.pressureDependenceClosed))))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse