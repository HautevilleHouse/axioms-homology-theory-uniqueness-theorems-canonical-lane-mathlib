import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.HomologyUniqueness

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure CellularHomologyPackage {H : HomologyTheoryObject} {A : EilenbergSteenrodPackage H} (U : HomologyUniquenessPackage A) where
  cwComplex : Type u
  cellularChainComplex : Type v
  cellularHomology : H.homologyFunctors
  satisfiesAxioms : EilenbergSteenrodPackage H
  equivalenceToSingularHomology : Prop

structure CellularHomologyEvidence {H : HomologyTheoryObject} {A : EilenbergSteenrodPackage H}
    {U : HomologyUniquenessPackage A} (C : CellularHomologyPackage U) where
  satisfiesAxiomsClosed : EilenbergSteenrodAxiomsClosed C.satisfiesAxioms
  equivalenceToSingularHomologyClosed : C.equivalenceToSingularHomology

def CellularHomologyClosed {H : HomologyTheoryObject} {A : EilenbergSteenrodPackage H}
    {U : HomologyUniquenessPackage A} (C : CellularHomologyPackage U) : Prop :=
  EilenbergSteenrodAxiomsClosed C.satisfiesAxioms ∧ C.equivalenceToSingularHomology

theorem cellular_homology_closed_from_evidence
    {H : HomologyTheoryObject} {A : EilenbergSteenrodPackage H}
    {U : HomologyUniquenessPackage A} (C : CellularHomologyPackage U)
    (E : CellularHomologyEvidence C) : CellularHomologyClosed C := by
  exact And.intro E.satisfiesAxiomsClosed E.equivalenceToSingularHomologyClosed

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse