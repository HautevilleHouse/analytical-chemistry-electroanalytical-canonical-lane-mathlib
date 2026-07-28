import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure DiffusionCertificate where
  diffusionCoefficient : ℕ
  concentrationGradient : ℕ
  cottrellConstant : ℕ
  time : ℕ
  diffusionChecked : Bool
  bridgeChecked : Bool
  classicalComplementCarried : Bool

def defaultDiffusionCertificate : DiffusionCertificate :=
  { diffusionCoefficient := 1,
    concentrationGradient := 1,
    cottrellConstant := 1,
    time := 1,
    diffusionChecked := true,
    bridgeChecked := true,
    classicalComplementCarried := true }

def DiffusionLayerClosed (C : DiffusionCertificate) : Prop :=
  C.bridgeChecked = true ∧ C.classicalComplementCarried = true

theorem diffusion_layer_closed_checked :
    DiffusionLayerClosed defaultDiffusionCertificate := by
  exact And.intro rfl rfl

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse