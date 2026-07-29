import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrolysisCellDesignPackage where
  cellVoltage : Prop
  ohmicDrop : Prop
  currentDistribution : Prop
  faradaicEfficiency : Prop
  energyConsumption : Prop

structure ElectrolysisCellDesignEvidence (D : ElectrolysisCellDesignPackage) where
  cellVoltageClosed : D.cellVoltage
  ohmicDropClosed : D.ohmicDrop
  currentDistributionClosed : D.currentDistribution
  faradaicEfficiencyClosed : D.faradaicEfficiency
  energyConsumptionClosed : D.energyConsumption

def ElectrolysisCellDesignClosed (D : ElectrolysisCellDesignPackage) : Prop :=
  D.cellVoltage ∧ D.ohmicDrop ∧
  D.currentDistribution ∧ D.faradaicEfficiency ∧
  D.energyConsumption

theorem electrolysis_cell_design_closed_from_evidence
    (D : ElectrolysisCellDesignPackage)
    (Ev : ElectrolysisCellDesignEvidence D) : ElectrolysisCellDesignClosed D := by
  exact And.intro Ev.cellVoltageClosed
    (And.intro Ev.ohmicDropClosed
      (And.intro Ev.currentDistributionClosed
        (And.intro Ev.faradaicEfficiencyClosed
          Ev.energyConsumptionClosed)))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse