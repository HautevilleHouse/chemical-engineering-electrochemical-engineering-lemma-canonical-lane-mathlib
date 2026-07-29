import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure MassTransportPackage where
  diffusionCoefficient : Prop
  concentrationProfile : Prop
  nernstPlanckEquation : Prop
  convectionTerm : Prop
  migrationTerm : Prop

structure MassTransportEvidence (M : MassTransportPackage) where
  diffusionCoefficientClosed : M.diffusionCoefficient
  concentrationProfileClosed : M.concentrationProfile
  nernstPlanckEquationClosed : M.nernstPlanckEquation
  convectionTermClosed : M.convectionTerm
  migrationTermClosed : M.migrationTerm

def MassTransportClosed (M : MassTransportPackage) : Prop :=
  M.diffusionCoefficient ∧ M.concentrationProfile ∧ M.nernstPlanckEquation ∧ M.convectionTerm ∧ M.migrationTerm

theorem mass_transport_closed_from_evidence (M : MassTransportPackage) (E : MassTransportEvidence M) : MassTransportClosed M := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.concentrationProfileClosed (And.intro E.nernstPlanckEquationClosed (And.intro E.convectionTermClosed E.migrationTermClosed)))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse