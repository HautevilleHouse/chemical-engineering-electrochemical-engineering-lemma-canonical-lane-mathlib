import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean.DoubleLayer

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrochemicalImpedancePackage (D : DoubleLayerPackage) where
  impedanceSpectrum : Prop
  chargeTransferResistance : Prop
  warburgImpedance : Prop
  equivalentCircuitModel : Prop

structure ElectrochemicalImpedanceEvidence {D : DoubleLayerPackage} (I : ElectrochemicalImpedancePackage D) where
  impedanceSpectrumClosed : I.impedanceSpectrum
  chargeTransferResistanceClosed : I.chargeTransferResistance
  warburgImpedanceClosed : I.warburgImpedance
  equivalentCircuitModelClosed : I.equivalentCircuitModel

def ElectrochemicalImpedanceClosed {D : DoubleLayerPackage} (I : ElectrochemicalImpedancePackage D) : Prop :=
  I.impedanceSpectrum ∧ I.chargeTransferResistance ∧
  I.warburgImpedance ∧ I.equivalentCircuitModel

theorem electrochemical_impedance_closed_from_evidence {D : DoubleLayerPackage}
    (I : ElectrochemicalImpedancePackage D) (Ev : ElectrochemicalImpedanceEvidence I) :
    ElectrochemicalImpedanceClosed I := by
  exact And.intro Ev.impedanceSpectrumClosed
    (And.intro Ev.chargeTransferResistanceClosed
      (And.intro Ev.warburgImpedanceClosed Ev.equivalentCircuitModelClosed))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
