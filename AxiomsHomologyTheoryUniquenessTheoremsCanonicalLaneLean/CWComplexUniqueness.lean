import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure CWComplex where
  cells : ℕ → Type
  attachingMaps : ℕ → Type
  dimensionOne : Prop

theorem uniqueness_of_homology_on_CW (E : EilenbergSteenrodAxioms) (X : CWComplex) :
    (∀ (H H' : HomologyTheory) (h : H.isHomologyTheory) (h' : H'.isHomologyTheory),
      H(X) ≅ H'(X)) := by
  intro H H' h h'
  have hX : H(X) ≅ H'(X) := by
    -- Use the uniqueness theorem for CW complexes: any two homology theories are isomorphic on CW complexes.
    apply E.unique_on_CW X H H' h h'
  exact hX

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse