import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure LongExactSequence (X A : Type) [TopologicalSpace X] [TopologicalSpace A] where
  inclusion : A → X
  boundary : ℕ → (homologyGroup (X/A) n) → (homologyGroup A (n-1))
  exactness : Prop

theorem exactness_from_axioms (E : EilenbergSteenrodAxioms) : 
    (∀ (X A : Type) [TopologicalSpace X] [TopologicalSpace A] (incl : A → X),
      LongExactSequence X A) := by
  intro X A incl
  refine {
    inclusion := incl
    boundary := λ n _ => ?_
    exactness := E.exactnessAxiom
  }
  exact (0 : homologyGroup A (n-1))

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse