import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure SingularHomologyPackage {P : EilenbergSteenrodAxiomsPackage} where
  topologicalSpace : Type u
  singularComplex : Type
  homologyGroups : Type
  satisfiesAxioms : Prop
  excisionProperty : Prop

structure SingularHomologyEvidence {P : EilenbergSteenrodAxiomsPackage}
    (S : SingularHomologyPackage P) where
  satisfiesAxiomsClosed : S.satisfiesAxioms
  excisionPropertyClosed : S.excisionProperty

def SingularHomologyClosed {P : EilenbergSteenrodAxiomsPackage}
    (S : SingularHomologyPackage P) : Prop :=
  S.satisfiesAxioms ∧ S.excisionProperty

theorem singular_homology_closed_from_evidence {P : EilenbergSteenrodAxiomsPackage}
    (S : SingularHomologyPackage P) (E : SingularHomologyEvidence S) :
    SingularHomologyClosed S := by
  exact And.intro E.satisfiesAxiomsClosed E.excisionPropertyClosed

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse