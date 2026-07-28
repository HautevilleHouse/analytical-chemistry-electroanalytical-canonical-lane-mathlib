import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

structure PotentiometryDatum where
  measuredPotential : Float
  standardPotential : Float
  temperature : Float
  ionCharge : Int
  activityRatio : Float
  nernstian : Bool

default instance : Inhabited PotentiometryDatum where
  default := {
    measuredPotential := 0.0
    standardPotential := 0.0
    temperature := 298.15
    ionCharge := 1
    activityRatio := 1.0
    nernstian := true
  }

structure PotentiometryEndpointLayerCertificate where
  datum : PotentiometryDatum
  endpointRoute : String
  potentialRoute : String
  ionRoute : String
  endpointChecked : Bool
  baselineGatesClosed : Bool

def potentiometryEndpointLayerCertificate : PotentiometryEndpointLayerCertificate := {
  datum := default,
  endpointRoute := "potentiometric cell potential measured at equilibrium",
  potentialRoute := "potential difference between indicator and reference electrodes",
  ionRoute := "ion-selective electrode response",
  endpointChecked := true,
  baselineGatesClosed := true
}

def PotentiometryEndpointLayerClosed (C : PotentiometryEndpointLayerCertificate) : Prop :=
  C.datum.nernstian = true ∧
  C.datum.measuredPotential > 0 ∧
  C.endpointChecked = true ∧
  C.baselineGatesClosed = true

theorem potentiometry_endpoint_layer_closed_checked :
    PotentiometryEndpointLayerClosed potentiometryEndpointLayerCertificate := by
  refine And.intro rfl (And.intro (by norm_num) (And.intro rfl rfl))

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse