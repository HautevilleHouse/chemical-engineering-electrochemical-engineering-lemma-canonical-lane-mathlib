import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure DoubleLayerPackage where
  capacitance : Prop
  chargeDistribution : Prop
  potentialProfile : Prop
  electrodeSurfaceCharge : Prop

structure DoubleLayerEvidence (D : DoubleLayerPackage) where
  capacitanceClosed : D.capacitance
  chargeDistributionClosed : D.chargeDistribution
  potentialProfileClosed : D.potentialProfile
  electrodeSurfaceChargeClosed : D.electrodeSurfaceCharge

def DoubleLayerClosed (D : DoubleLayerPackage) : Prop :=
  D.capacitance ∧ D.chargeDistribution ∧
  D.potentialProfile ∧ D.electrodeSurfaceCharge

theorem double_layer_closed_from_evidence (D : DoubleLayerPackage)
    (Ev : DoubleLayerEvidence D) : DoubleLayerClosed D := by
  exact And.intro Ev.capacitanceClosed
    (And.intro Ev.chargeDistributionClosed
      (And.intro Ev.potentialProfileClosed Ev.electrodeSurfaceChargeClosed))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
