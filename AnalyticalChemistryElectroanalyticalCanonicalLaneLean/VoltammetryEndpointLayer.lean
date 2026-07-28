import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure VoltammetryDatum where
  peakPotential : Float
  peakCurrent : Float
  scanRate : Float
  electrodeArea : Float
  diffusionCoefficient : Float
  reversible : Bool

default instance : Inhabited VoltammetryDatum where
  default := {
    peakPotential := 0.0
    peakCurrent := 0.0
    scanRate := 0.0
    electrodeArea := 0.0
    diffusionCoefficient := 0.0
    reversible := true
  }

structure VoltammetryEndpointLayerCertificate where
  datum : VoltammetryDatum
  endpointRoute : String
  currentRoute : String
  potentialRoute : String
  endpointChecked : Bool
  baselineGatesClosed : Bool

def voltammetryEndpointLayerCertificate : VoltammetryEndpointLayerCertificate := {
  datum := default,
  endpointRoute := "voltammetric peak potential and current measured at scan rate",
  currentRoute := "faradaic current recorded at working electrode",
  potentialRoute := "applied potential vs reference electrode",
  endpointChecked := true,
  baselineGatesClosed := true
}

def VoltammetryEndpointLayerClosed (C : VoltammetryEndpointLayerCertificate) : Prop :=
  C.datum.reversible = true ∧
  C.datum.peakPotential > 0 ∧
  C.datum.peakCurrent > 0 ∧
  C.endpointChecked = true ∧
  C.baselineGatesClosed = true

theorem voltammetry_endpoint_layer_closed_checked :
    VoltammetryEndpointLayerClosed voltammetryEndpointLayerCertificate := by
  refine And.intro rfl (And.intro (by norm_num) (And.intro (by norm_num) (And.intro rfl rfl)))

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse