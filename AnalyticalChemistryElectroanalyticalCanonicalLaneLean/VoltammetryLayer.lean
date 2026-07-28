import canonicalLaneMathlib.AdmissibleClass
import AnalyticalChemistryElectroanalyticalCanonicalLaneLean.ElectrodeKineticsLayer

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure VoltammetryCertificate where
  scanRate : ℝ
  peakCurrent : ℝ
  peakPotential : ℝ
  concentration : ℝ
  diffusionCoefficient : ℝ
  electrodeArea : ℝ

def defaultVoltammetry : VoltammetryCertificate :=
  { scanRate := 0.1,
    peakCurrent := 1.0e-5,
    peakPotential := 0.2,
    concentration := 1.0e-3,
    diffusionCoefficient := 1.0e-9,
    electrodeArea := 1.0e-4
  }

def VoltammetryClosed (C : VoltammetryCertificate) : Prop :=
  C.scanRate > 0 ∧ C.diffusionCoefficient > 0 ∧ C.electrodeArea > 0

theorem voltammetry_closed_checked :
    VoltammetryClosed defaultVoltammetry := by
  unfold VoltammetryClosed defaultVoltammetry
  simp

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse