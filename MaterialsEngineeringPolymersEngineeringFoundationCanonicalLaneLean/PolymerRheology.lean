import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure PolymerRheologyPackage where
  viscosityModel : Type u
  shearRate : Type v
  relaxationTime : Prop
  viscoelasticBehavior : Prop
  entanglements : Prop
  reptationModel : Prop

structure PolymerRheologyEvidence (P : PolymerRheologyPackage) where
  relaxationTimeClosed : P.relaxationTime
  viscoelasticBehaviorClosed : P.viscoelasticBehavior
  entanglementsClosed : P.entanglements
  reptationModelClosed : P.reptationModel

def PolymerRheologyClosed (P : PolymerRheologyPackage) : Prop :=
  P.relaxationTime ∧ P.viscoelasticBehavior ∧ P.entanglements ∧ P.reptationModel

theorem polymer_rheology_closed_from_evidence (P : PolymerRheologyPackage) (E : PolymerRheologyEvidence P) : PolymerRheologyClosed P :=
  And.intro E.relaxationTimeClosed (And.intro E.viscoelasticBehaviorClosed (And.intro E.entanglementsClosed E.reptationModelClosed))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse