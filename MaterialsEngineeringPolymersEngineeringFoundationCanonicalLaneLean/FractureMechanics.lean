import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  fractureToughness : Prop
  parisLaw : Prop
  fatigueCrackGrowth : Prop
  energyReleaseRate : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  parisLawClosed : F.parisLaw
  fatigueCrackGrowthClosed : F.fatigueCrackGrowth
  energyReleaseRateClosed : F.energyReleaseRate

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.parisLaw ∧ F.fatigueCrackGrowth ∧ F.energyReleaseRate

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F :=
  And.intro E.fractureToughnessClosed (And.intro E.parisLawClosed (And.intro E.fatigueCrackGrowthClosed E.energyReleaseRateClosed))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse