import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrochemicalImpedancePackage where
  impedanceDefinition : Prop
  chargeTransferResistance : Prop
  doubleLayerCapacitance : Prop
  warburgImpedance : Prop
  nyquistPlot : Prop

structure ElectrochemicalImpedanceEvidence (I : ElectrochemicalImpedancePackage) where
  impedanceDefinitionClosed : I.impedanceDefinition
  chargeTransferResistanceClosed : I.chargeTransferResistance
  doubleLayerCapacitanceClosed : I.doubleLayerCapacitance
  warburgImpedanceClosed : I.warburgImpedance
  nyquistPlotClosed : I.nyquistPlot

def ElectrochemicalImpedanceClosed (I : ElectrochemicalImpedancePackage) : Prop :=
  I.impedanceDefinition ∧ I.chargeTransferResistance ∧
  I.doubleLayerCapacitance ∧ I.warburgImpedance ∧
  I.nyquistPlot

theorem electrochemical_impedance_closed_from_evidence
    (I : ElectrochemicalImpedancePackage)
    (Ev : ElectrochemicalImpedanceEvidence I) : ElectrochemicalImpedanceClosed I := by
  exact And.intro Ev.impedanceDefinitionClosed
    (And.intro Ev.chargeTransferResistanceClosed
      (And.intro Ev.doubleLayerCapacitanceClosed
        (And.intro Ev.warburgImpedanceClosed
          Ev.nyquistPlotClosed)))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse