import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  hamiltonianOperator : Type u
  molecularOrbitals : Type v
  atomicOrbitalBasis : Prop
  linearCombination : Prop
  secularEquation : Prop
  overlapIntegral : Prop
  orbitalEnergy : Prop
  homoLumoGap : Prop
  waveFunction : Prop
  electronDensity : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  atomicOrbitalBasisClosed : M.atomicOrbitalBasis
  linearCombinationClosed : M.linearCombination
  secularEquationClosed : M.secularEquation
  overlapIntegralClosed : M.overlapIntegral
  orbitalEnergyClosed : M.orbitalEnergy
  homoLumoGapClosed : M.homoLumoGap
  waveFunctionClosed : M.waveFunction
  electronDensityClosed : M.electronDensity

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.atomicOrbitalBasis ∧ M.linearCombination ∧ M.secularEquation ∧
  M.overlapIntegral ∧ M.orbitalEnergy ∧ M.homoLumoGap ∧
  M.waveFunction ∧ M.electronDensity

theorem molecular_orbital_theory_closed_from_evidence
    (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.atomicOrbitalBasisClosed
    (And.intro E.linearCombinationClosed
      (And.intro E.secularEquationClosed
        (And.intro E.overlapIntegralClosed
          (And.intro E.orbitalEnergyClosed
            (And.intro E.homoLumoGapClosed
              (And.intro E.waveFunctionClosed E.electronDensityClosed))))))

end ChemicalEngineeringElectrochemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse