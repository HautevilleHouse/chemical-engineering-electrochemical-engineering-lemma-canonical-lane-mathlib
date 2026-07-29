import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Type u
  equilibriumConstant : Type v
  standardPotential : Prop
  reactionQuotient : Prop
  nernstEquation : Prop
  cellPotential : Prop
  temperatureDependence : Prop
  pressureDependence : Prop
  activityCoefficient : Prop
  electrochemicalPotential : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  standardPotentialClosed : T.standardPotential
  reactionQuotientClosed : T.reactionQuotient
  nernstEquationClosed : T.nernstEquation
  cellPotentialClosed : T.cellPotential
  temperatureDependenceClosed : T.temperatureDependence
  pressureDependenceClosed : T.pressureDependence
  activityCoefficientClosed : T.activityCoefficient
  electrochemicalPotentialClosed : T.electrochemicalPotential

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.standardPotential ∧ T.reactionQuotient ∧ T.nernstEquation ∧
  T.cellPotential ∧ T.temperatureDependence ∧ T.pressureDependence ∧
  T.activityCoefficient ∧ T.electrochemicalPotential

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.standardPotentialClosed
    (And.intro E.reactionQuotientClosed
      (And.intro E.nernstEquationClosed
        (And.intro E.cellPotentialClosed
          (And.intro E.temperatureDependenceClosed
            (And.intro E.pressureDependenceClosed
              (And.intro E.activityCoefficientClosed E.electrochemicalPotentialClosed))))))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse