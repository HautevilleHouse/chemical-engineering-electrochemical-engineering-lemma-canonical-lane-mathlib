import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ImpedanceSpectroscopyPackage where
  impedanceDefinition : Prop
  nyquistPlot : Prop
  randlesCircuit : Prop
  warburgImpedance : Prop
  constantPhaseElement : Prop
  equivalentCircuitFitting : Prop

structure ImpedanceSpectroscopyEvidence (I : ImpedanceSpectroscopyPackage) where
  impedanceDefinitionClosed : I.impedanceDefinition
  nyquistPlotClosed : I.nyquistPlot
  randlesCircuitClosed : I.randlesCircuit
  warburgImpedanceClosed : I.warburgImpedance
  constantPhaseElementClosed : I.constantPhaseElement
  equivalentCircuitFittingClosed : I.equivalentCircuitFitting

def ImpedanceSpectroscopyClosed (I : ImpedanceSpectroscopyPackage) : Prop :=
  I.impedanceDefinition ∧ I.nyquistPlot ∧
  I.randlesCircuit ∧ I.warburgImpedance ∧
  I.constantPhaseElement ∧ I.equivalentCircuitFitting

theorem impedance_spectroscopy_closed_from_evidence
    (I : ImpedanceSpectroscopyPackage) (Ev : ImpedanceSpectroscopyEvidence I) :
    ImpedanceSpectroscopyClosed I := by
  exact And.intro Ev.impedanceDefinitionClosed
    (And.intro Ev.nyquistPlotClosed
      (And.intro Ev.randlesCircuitClosed
        (And.intro Ev.warburgImpedanceClosed
          (And.intro Ev.constantPhaseElementClosed
            Ev.equivalentCircuitFittingClosed))))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse