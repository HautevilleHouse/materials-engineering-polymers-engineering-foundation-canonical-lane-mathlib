import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure MechanicalPolymerPropertiesPackage where
  elasticModulus : Prop
  yieldStress : Prop
  fractureToughness : Prop
  viscoelasticModel : Prop
  creepCompliance : Prop
  fatigueLife : Prop
  hardSegmentMicrophase : Prop

structure MechanicalPolymerPropertiesEvidence (M : MechanicalPolymerPropertiesPackage) where
  elasticModulusClosed : M.elasticModulus
  yieldStressClosed : M.yieldStress
  fractureToughnessClosed : M.fractureToughness
  viscoelasticModelClosed : M.viscoelasticModel
  creepComplianceClosed : M.creepCompliance
  fatigueLifeClosed : M.fatigueLife
  hardSegmentMicrophaseClosed : M.hardSegmentMicrophase

def MechanicalPolymerPropertiesClosed (M : MechanicalPolymerPropertiesPackage) : Prop :=
  M.elasticModulus ∧ M.yieldStress ∧ M.fractureToughness ∧ M.viscoelasticModel ∧ M.creepCompliance ∧ M.fatigueLife ∧ M.hardSegmentMicrophase

theorem mechanicalPolymerProperties_closed_from_evidence
    (M : MechanicalPolymerPropertiesPackage) (E : MechanicalPolymerPropertiesEvidence M) :
    MechanicalPolymerPropertiesClosed M :=
by
  exact And.intro E.elasticModulusClosed
    (And.intro E.yieldStressClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.viscoelasticModelClosed
          (And.intro E.creepComplianceClosed
            (And.intro E.fatigueLifeClosed E.hardSegmentMicrophaseClosed)))))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse