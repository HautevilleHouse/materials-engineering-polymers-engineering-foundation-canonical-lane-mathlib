import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure PolymerPhysicsPackage where
  chainConformation : Type u
  entanglementDensity : ℝ
  reptationDynamics : Prop
  viscoelasticity : Prop
  glassTransitionTemperature : ℝ

structure PolymerPhysicsEvidence (P : PolymerPhysicsPackage) where
  reptationDynamicsClosed : P.reptationDynamics
  viscoelasticityClosed : P.viscoelasticity
  entanglementDensityPositive : P.entanglementDensity > 0
  glassTransitionTemperatureFinite : P.glassTransitionTemperature > 0

def PolymerPhysicsClosed (P : PolymerPhysicsPackage) : Prop :=
  P.reptationDynamics ∧ P.viscoelasticity ∧ P.entanglementDensity > 0 ∧
  P.glassTransitionTemperature > 0

theorem polymer_physics_closed_from_evidence (P : PolymerPhysicsPackage)
    (E : PolymerPhysicsEvidence P) : PolymerPhysicsClosed P := by
  exact And.intro E.reptationDynamicsClosed
    (And.intro E.viscoelasticityClosed
      (And.intro E.entanglementDensityPositive E.glassTransitionTemperatureFinite))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
