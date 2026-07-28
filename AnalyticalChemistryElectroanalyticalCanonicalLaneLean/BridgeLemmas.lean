import canonicalLaneMathlib.AdmissibleClass
import AnalyticalChemistryElectroanalyticalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

def bridgeClosed (A : ElectroanalyticalAdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : ElectroanalyticalAdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelChecked,
    A.object.spectralPersistenceBridgeChecked,
    A.object.sourceBoundaryLedgerChecked,
    A.object.classicalRemainderCarried⟩

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse