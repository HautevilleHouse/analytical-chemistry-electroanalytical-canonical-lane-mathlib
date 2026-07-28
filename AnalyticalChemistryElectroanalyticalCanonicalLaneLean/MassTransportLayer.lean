import canonicalLaneMathlib.AdmissibleClass
import AnalyticalChemistryElectroanalyticalCanonicalLaneLean.NernstEquationLayer

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure MassTransportCertificate where
  diffusionCoefficient : ℝ
  kinematicViscosity : ℝ
  flowVelocity : ℝ
  electrodeLength : ℝ
  concentrationBulk : ℝ

def defaultMassTransport : MassTransportCertificate :=
  { diffusionCoefficient := 1.0e-9,
    kinematicViscosity := 1.0e-6,
    flowVelocity := 0.1,
    electrodeLength := 1.0e-3,
    concentrationBulk := 1.0e-3
  }

def MassTransportClosed (C : MassTransportCertificate) : Prop :=
  C.diffusionCoefficient > 0 ∧ C.kinematicViscosity > 0 ∧ C.electrodeLength > 0

theorem mass_transport_closed_checked :
    MassTransportClosed defaultMassTransport := by
  unfold MassTransportClosed defaultMassTransport
  simp

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse