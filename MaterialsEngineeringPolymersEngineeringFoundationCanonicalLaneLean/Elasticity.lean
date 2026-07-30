import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  strainTensor : Type u
  stressTensor : Type v
  stiffnessTensor : Type w
  hookesLawLinear : Prop
  isotropicAssumption : Prop
  youngsModulus : Prop
  poissonRatio : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawLinearClosed : E.hookesLawLinear
  isotropicAssumptionClosed : E.isotropicAssumption
  youngsModulusClosed : E.youngsModulus
  poissonRatioClosed : E.poissonRatio

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLawLinear ∧ E.isotropicAssumption ∧ E.youngsModulus ∧ E.poissonRatio

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E :=
  And.intro Ev.hookesLawLinearClosed (And.intro Ev.isotropicAssumptionClosed (And.intro Ev.youngsModulusClosed Ev.poissonRatioClosed))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse