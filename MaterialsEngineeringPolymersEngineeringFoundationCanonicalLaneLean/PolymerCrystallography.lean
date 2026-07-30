import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure PolymerCrystallographyPackage where
  crystalSystem : Type u
  unitCell : Type v
  chainPacking : Prop
  lamellarThickness : Prop
  spheruliteFormation : Prop

structure PolymerCrystallographyEvidence (P : PolymerCrystallographyPackage) where
  chainPackingClosed : P.chainPacking
  lamellarThicknessClosed : P.lamellarThickness
  spheruliteFormationClosed : P.spheruliteFormation

def PolymerCrystallographyClosed (P : PolymerCrystallographyPackage) : Prop :=
  P.chainPacking ∧ P.lamellarThickness ∧ P.spheruliteFormation

theorem polymer_crystallography_closed_from_evidence (P : PolymerCrystallographyPackage) (E : PolymerCrystallographyEvidence P) :
    PolymerCrystallographyClosed P := by
  exact And.intro E.chainPackingClosed (And.intro E.lamellarThicknessClosed E.spheruliteFormationClosed)

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
