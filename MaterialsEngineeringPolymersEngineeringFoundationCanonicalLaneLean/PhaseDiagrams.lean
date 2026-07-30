import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperaturePressure : Type u
  phases : Type v
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  tieLines : Prop
  criticalPoints : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  tieLinesClosed : P.tieLines
  criticalPointsClosed : P.criticalPoints

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.tieLines ∧ P.criticalPoints

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P :=
  And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyClosed (And.intro E.tieLinesClosed E.criticalPointsClosed))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse