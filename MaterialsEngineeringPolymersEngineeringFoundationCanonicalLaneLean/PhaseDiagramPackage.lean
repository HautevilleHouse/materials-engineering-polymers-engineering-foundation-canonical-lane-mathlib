import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  criticalPoints : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧ P.criticalPoints

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.pressureRangeClosed (And.intro E.phaseBoundariesClosed E.criticalPointsClosed))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
