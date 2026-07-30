import HautevilleHouse.MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure MaterialsEngineeringPolymersEngineeringFoundationAdmittedObject where
  space : MaterialsEngineeringPolymersEngineeringFoundationSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def MaterialsEngineeringPolymersEngineeringFoundationWitnessClosed (O : MaterialsEngineeringPolymersEngineeringFoundationAdmittedObject) : Prop :=
  O.homeomorphicToSphere

structure MaterialsEngineeringPolymersEngineeringFoundationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse