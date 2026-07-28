import AnalyticalChemistryElectroanalyticalCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

def gateClosed (A : ElectroanalyticalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ElectroanalyticalAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse