import canonicalLaneMathlib.AdmissibleClass
import AnalyticalChemistryElectroanalyticalCanonicalLaneLean.VoltammetryLayer

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure NernstEquationCertificate where
  standardPotential : ℝ
  electronCount : ℕ
  temperature : ℝ
  oxidizedConcentration : ℝ
  reducedConcentration : ℝ

def defaultNernst : NernstEquationCertificate :=
  { standardPotential := 0.34,
    electronCount := 2,
    temperature := 298.15,
    oxidizedConcentration := 1.0e-3,
    reducedConcentration := 1.0e-3
  }

def NernstEquationClosed (C : NernstEquationCertificate) : Prop :=
  C.electronCount > 0 ∧ C.temperature > 0 ∧ C.oxidizedConcentration > 0 ∧ C.reducedConcentration > 0

theorem nernst_equation_closed_checked :
    NernstEquationClosed defaultNernst := by
  unfold NernstEquationClosed defaultNernst
  simp

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse