import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure ElectrochemicalEngineeringLemmaEvidencePackage where
  electrodeKinetics : ElectrodeKineticsPackage
  massTransport : MassTransportPackage
  thermodynamics : ElectrochemicalThermodynamicsPackage
  impedance : ImpedanceSpectroscopyPackage
  kineticsEvidence : ElectrodeKineticsEvidence electrodeKinetics
  transportEvidence : MassTransportEvidence massTransport
  thermodynamicsEvidence : ElectrochemicalThermodynamicsEvidence thermodynamics
  impedanceEvidence : ImpedanceSpectroscopyEvidence impedance

def ElectrochemicalEngineeringLemmaClosed (E : ElectrochemicalEngineeringLemmaEvidencePackage) : Prop :=
  ElectrodeKineticsClosed E.electrodeKinetics ∧
  MassTransportClosed E.massTransport ∧
  ElectrochemicalThermodynamicsClosed E.thermodynamics ∧
  ImpedanceSpectroscopyClosed E.impedance

theorem electrochemical_engineering_lemma_closed_from_evidence
    (E : ElectrochemicalEngineeringLemmaEvidencePackage) :
    ElectrochemicalEngineeringLemmaClosed E := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · exact electrode_kinetics_closed_from_evidence E.electrodeKinetics E.kineticsEvidence
  · exact mass_transport_closed_from_evidence E.massTransport E.transportEvidence
  · exact electrochemical_thermodynamics_closed_from_evidence E.thermodynamics E.thermodynamicsEvidence
  · exact impedance_spectroscopy_closed_from_evidence E.impedance E.impedanceEvidence

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse