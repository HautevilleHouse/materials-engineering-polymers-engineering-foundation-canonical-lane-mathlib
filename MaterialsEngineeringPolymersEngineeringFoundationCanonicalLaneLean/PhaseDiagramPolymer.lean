import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPolymerPackage where
  temperatureRange : Prop
  compositionDomain : Prop
  phaseBoundaries : Prop
  criticalPoints : Prop
  tieLines : Prop
  leverRuleApplied : Prop
  interpretationFunction : Prop

structure PhaseDiagramPolymerEvidence (P : PhaseDiagramPolymerPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionDomainClosed : P.compositionDomain
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints
  tieLinesClosed : P.tieLines
  leverRuleAppliedClosed : P.leverRuleApplied
  interpretationFunctionClosed : P.interpretationFunction

def PhaseDiagramPolymerClosed (P : PhaseDiagramPolymerPackage) : Prop :=
  P.temperatureRange ∧ P.compositionDomain ∧ P.phaseBoundaries ∧ P.criticalPoints ∧ P.tieLines ∧ P.leverRuleApplied ∧ P.interpretationFunction

theorem phaseDiagramPolymer_closed_from_evidence
    (P : PhaseDiagramPolymerPackage) (E : PhaseDiagramPolymerEvidence P) :
    PhaseDiagramPolymerClosed P :=
by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.compositionDomainClosed
      (And.intro E.phaseBoundariesClosed
        (And.intro E.criticalPointsClosed
          (And.intro E.tieLinesClosed
            (And.intro E.leverRuleAppliedClosed E.interpretationFunctionClosed)))))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse