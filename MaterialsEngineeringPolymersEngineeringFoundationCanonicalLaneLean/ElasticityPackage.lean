import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : Prop
  poissonRatio : Prop
  stressStrainRelation : Prop
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticModulusClosed : E.elasticModulus
  poissonRatioClosed : E.poissonRatio
  stressStrainRelationClosed : E.stressStrainRelation
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticModulus ∧ E.poissonRatio ∧ E.stressStrainRelation ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.elasticModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.stressStrainRelationClosed Ev.yieldCriterionClosed))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
