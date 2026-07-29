import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.AdmissibleHomologyTheory

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure EilenbergSteenrodAxiomsPackage where
  homotopyInvariant : Prop
  exactness : Prop
  excision : Prop
  dimension : Prop
  additivity : Prop
  category : Type u
  functoriality : Prop

structure EilenbergSteenrodAxiomsEvidence (P : EilenbergSteenrodAxiomsPackage) where
  homotopyInvariantClosed : P.homotopyInvariant
  exactnessClosed : P.exactness
  excisionClosed : P.excision
  dimensionClosed : P.dimension
  additivityClosed : P.additivity
  functorialityClosed : P.functoriality

def EilenbergSteenrodAxiomsClosed (P : EilenbergSteenrodAxiomsPackage) : Prop :=
  P.homotopyInvariant ∧ P.exactness ∧ P.excision ∧ P.dimension ∧ P.additivity ∧ P.functoriality

theorem eilenberg_steenrod_axioms_closed_from_evidence
    (P : EilenbergSteenrodAxiomsPackage) (E : EilenbergSteenrodAxiomsEvidence P) :
    EilenbergSteenrodAxiomsClosed P := by
  exact And.intro E.homotopyInvariantClosed
    (And.intro E.exactnessClosed
      (And.intro E.excisionClosed
        (And.intro E.dimensionClosed
          (And.intro E.additivityClosed E.functorialityClosed))))

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse