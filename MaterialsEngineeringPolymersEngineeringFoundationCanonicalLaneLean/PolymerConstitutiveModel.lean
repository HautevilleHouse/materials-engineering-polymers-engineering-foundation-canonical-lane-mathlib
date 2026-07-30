import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure PolymerConstitutiveModelPackage where
  viscoelasticModulus : Type
  relaxationTime : Prop
  creepCompliance : Prop
  timeTemperatureSuperposition : Prop

structure PolymerConstitutiveModelEvidence (P : PolymerConstitutiveModelPackage) where
  relaxationTimeClosed : P.relaxationTime
  creepComplianceClosed : P.creepCompliance
  timeTemperatureSuperpositionClosed : P.timeTemperatureSuperposition

def PolymerConstitutiveModelClosed (P : PolymerConstitutiveModelPackage) : Prop :=
  P.relaxationTime ∧ P.creepCompliance ∧ P.timeTemperatureSuperposition

theorem polymer_constitutive_model_closed_from_evidence (P : PolymerConstitutiveModelPackage) (E : PolymerConstitutiveModelEvidence P) :
    PolymerConstitutiveModelClosed P := by
  exact And.intro E.relaxationTimeClosed (And.intro E.creepComplianceClosed E.timeTemperatureSuperpositionClosed)

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
