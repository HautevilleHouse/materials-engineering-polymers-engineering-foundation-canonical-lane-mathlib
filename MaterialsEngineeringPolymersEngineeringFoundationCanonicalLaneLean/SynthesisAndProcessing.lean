import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure SynthesisProcessingPackage where
  polymerizationMethod : Type u
  molecularWeightControl : Type v
  rheology : Prop
  extrusionMolding : Prop
  annealing : Prop

structure SynthesisProcessingEvidence (S : SynthesisProcessingPackage) where
  polymerizationMethodClosed : S.polymerizationMethod
  molecularWeightControlClosed : S.molecularWeightControl
  rheologyClosed : S.rheology
  extrusionMoldingClosed : S.extrusionMolding
  annealingClosed : S.annealing

def SynthesisProcessingClosed (S : SynthesisProcessingPackage) : Prop :=
  S.polymerizationMethod ∧ S.molecularWeightControl ∧ S.rheology ∧ S.extrusionMolding ∧ S.annealing

theorem synthesis_processing_closed_from_evidence (S : SynthesisProcessingPackage) (E : SynthesisProcessingEvidence S) :
    SynthesisProcessingClosed S := by
  exact And.intro E.polymerizationMethodClosed
    (And.intro E.molecularWeightControlClosed
      (And.intro E.rheologyClosed
        (And.intro E.extrusionMoldingClosed E.annealingClosed)))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
