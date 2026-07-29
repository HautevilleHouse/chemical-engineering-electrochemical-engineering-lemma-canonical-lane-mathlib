import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrolyteConductivityPackage where
  ionicConductivity : Prop
  ionicStrength : Prop
  migrationCurrent : Prop
  diffusionPotential : Prop

structure ElectrolyteConductivityEvidence (C : ElectrolyteConductivityPackage) where
  ionicConductivityClosed : C.ionicConductivity
  ionicStrengthClosed : C.ionicStrength
  migrationCurrentClosed : C.migrationCurrent
  diffusionPotentialClosed : C.diffusionPotential

def ElectrolyteConductivityClosed (C : ElectrolyteConductivityPackage) : Prop :=
  C.ionicConductivity ∧ C.ionicStrength ∧
  C.migrationCurrent ∧ C.diffusionPotential

theorem electrolyte_conductivity_closed_from_evidence (C : ElectrolyteConductivityPackage)
    (Ev : ElectrolyteConductivityEvidence C) : ElectrolyteConductivityClosed C := by
  exact And.intro Ev.ionicConductivityClosed
    (And.intro Ev.ionicStrengthClosed
      (And.intro Ev.migrationCurrentClosed Ev.diffusionPotentialClosed))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
