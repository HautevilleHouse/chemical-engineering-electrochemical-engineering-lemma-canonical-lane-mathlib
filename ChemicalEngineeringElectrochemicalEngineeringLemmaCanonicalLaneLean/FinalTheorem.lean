import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

def ConstrainedElectroChemicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_electrochemical_endgame (A : AdmissibleClass) : ConstrainedElectroChemicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse