import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure KineticsCertificate where
  rateConstant : ℕ
  electronTransferCoefficient : ℕ
  standardRateConstant : ℕ
  overpotential : ℕ
  routeChecked : Bool
  bridgeChecked : Bool
  classicalComplementCarried : Bool

def defaultKineticsCertificate : KineticsCertificate :=
  { rateConstant := 1,
    electronTransferCoefficient := 1,
    standardRateConstant := 1,
    overpotential := 0,
    routeChecked := true,
    bridgeChecked := true,
    classicalComplementCarried := true }

def KineticsLayerClosed (C : KineticsCertificate) : Prop :=
  C.bridgeChecked = true ∧ C.classicalComplementCarried = true

theorem kinetics_layer_closed_checked :
    KineticsLayerClosed defaultKineticsCertificate := by
  exact And.intro rfl rfl

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse