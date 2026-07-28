import canonicalLaneMathlib.AdmissibleClass
import AnalyticalChemistryElectroanalyticalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure ElectrodeKineticsCertificate where
  rateConstantForward : ℝ
  rateConstantReverse : ℝ
  overpotential : ℝ
  temperature : ℝ
  standardRateConstant : ℝ
  transferCoefficient : ℝ

def defaultElectrodeKinetics : ElectrodeKineticsCertificate :=
  { rateConstantForward := 1.0e-3,
    rateConstantReverse := 1.0e-3,
    overpotential := 0.1,
    temperature := 298.15,
    standardRateConstant := 1.0e-3,
    transferCoefficient := 0.5
  }

def ElectrodeKineticsClosed (C : ElectrodeKineticsCertificate) : Prop :=
  C.standardRateConstant > 0 ∧ C.transferCoefficient > 0 ∧ C.transferCoefficient < 1

theorem electrode_kinetics_closed_checked :
    ElectrodeKineticsClosed defaultElectrodeKinetics := by
  unfold ElectrodeKineticsClosed defaultElectrodeKinetics
  simp

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse