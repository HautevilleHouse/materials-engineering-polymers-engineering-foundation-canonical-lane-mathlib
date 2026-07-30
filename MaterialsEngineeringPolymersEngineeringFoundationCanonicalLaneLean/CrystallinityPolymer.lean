import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean

structure CrystallinityPolymerPackage where
  crystalLatice : Prop
  unitCellParameters : Prop
  degreeOfCrystallinity : Prop
  spheruliteGrowthRate : Prop
  crystallineAmoephousInterface : Prop
  thermalProperty : Prop

structure CrystallinityPolymerEvidence (C : CrystallinityPolymerPackage) where
  crystalLaticeClosed : C.crystalLatice
  unitCellParametersClosed : C.unitCellParameters
  degreeOfCrystallinityClosed : C.degreeOfCrystallinity
  spheruliteGrowthRateClosed : C.spheruliteGrowthRate
  crystallineAmoephousInterfaceClosed : C.crystallineAmoephousInterface
  thermalPropertyClosed : C.thermalProperty

def CrystallinityPolymerClosed (C : CrystallinityPolymerPackage) : Prop :=
  C.crystalLatice ∧ C.unitCellParameters ∧ C.degreeOfCrystallinity ∧ C.spheruliteGrowthRate ∧ C.crystallineAmoephousInterface ∧ C.thermalProperty

theorem crystallinityPolymer_closed_from_evidence
    (C : CrystallinityPolymerPackage) (E : CrystallinityPolymerEvidence C) :
    CrystallinityPolymerClosed C :=
by
  exact And.intro E.crystalLaticeClosed
    (And.intro E.unitCellParametersClosed
      (And.intro E.degreeOfCrystallinityClosed
        (And.intro E.spheruliteGrowthRateClosed
          (And.intro E.crystallineAmoephousInterfaceClosed E.thermalPropertyClosed))))

end MaterialsEngineeringPolymersEngineeringFoundationCanonicalLaneLean
end HautevilleHouse