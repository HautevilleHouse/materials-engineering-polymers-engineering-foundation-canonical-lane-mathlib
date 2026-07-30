import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  unitCellVolume : Prop
  crystalSystem : Prop
  bravaisLattice : Prop
  spaceGroup : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellVolumeClosed : C.unitCellVolume
  crystalSystemClosed : C.crystalSystem
  bravaisLatticeClosed : C.bravaisLattice
  spaceGroupClosed : C.spaceGroup

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.unitCellVolume ∧ C.crystalSystem ∧ C.bravaisLattice ∧ C.spaceGroup

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.unitCellVolumeClosed (And.intro E.crystalSystemClosed (And.intro E.bravaisLatticeClosed E.spaceGroupClosed))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
