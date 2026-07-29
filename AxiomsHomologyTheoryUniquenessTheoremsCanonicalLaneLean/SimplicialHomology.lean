import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure SimplicialHomologyPackage {P : EilenbergSteenrodAxiomsPackage} where
  simplicialSet : Type u
  homologyGroups : Type
  satisfiesAxioms : Prop
  computation : Prop

structure SimplicialHomologyEvidence {P : EilenbergSteenrodAxiomsPackage}
    (S : SimplicialHomologyPackage P) where
  satisfiesAxiomsClosed : S.satisfiesAxioms
  computationClosed : S.computation

def SimplicialHomologyClosed {P : EilenbergSteenrodAxiomsPackage}
    (S : SimplicialHomologyPackage P) : Prop :=
  S.satisfiesAxioms ∧ S.computation

theorem simplicial_homology_closed_from_evidence {P : EilenbergSteenrodAxiomsPackage}
    (S : SimplicialHomologyPackage P) (E : SimplicialHomologyEvidence S) :
    SimplicialHomologyClosed S := by
  exact And.intro E.satisfiesAxiomsClosed E.computationClosed

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse