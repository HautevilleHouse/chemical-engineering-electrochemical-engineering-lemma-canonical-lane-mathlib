import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure MassTransportPackage where
  diffusionEquation : Prop
  convectionTerm : Prop
  migrationTerm : Prop
  boundaryLayer : Prop
  limitingCurrent : Prop

structure MassTransportEvidence (M : MassTransportPackage) where
  diffusionEquationClosed : M.diffusionEquation
  convectionTermClosed : M.convectionTerm
  migrationTermClosed : M.migrationTerm
  boundaryLayerClosed : M.boundaryLayer
  limitingCurrentClosed : M.limitingCurrent

def MassTransportClosed (M : MassTransportPackage) : Prop :=
  M.diffusionEquation ∧ M.convectionTerm ∧
  M.migrationTerm ∧ M.boundaryLayer ∧
  M.limitingCurrent

theorem mass_transport_closed_from_evidence (M : MassTransportPackage)
    (Ev : MassTransportEvidence M) : MassTransportClosed M := by
  exact And.intro Ev.diffusionEquationClosed
    (And.intro Ev.convectionTermClosed
      (And.intro Ev.migrationTermClosed
        (And.intro Ev.boundaryLayerClosed
          Ev.limitingCurrentClosed)))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse