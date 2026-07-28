import HautevilleHouse.AnalyticalChemistryElectroanalyticalCanonicalLaneLean.RHSpectralCertificate

namespace HautevilleHouse
namespace AnalyticalChemistryElectroanalyticalCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def AdmissibleElectroanalyticalObject : AdmissibleClass := {
  methodName := "cyclic voltammetry",
  electrodeConfigured := true,
  bridgePotentialApplied := true,
  referenceElectrodeStable := true,
  gateWitness := Or.inl rfl
}

theorem admissible_electroanalytical_closure : ConstrainedTheoremClosure AdmissibleElectroanalyticalObject :=
  constrained_theorem_closure AdmissibleElectroanalyticalObject

end AnalyticalChemistryElectroanalyticalCanonicalLaneLean
end HautevilleHouse