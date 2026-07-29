import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.HomologyAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure HomologyGroupsPackage (H : HomologyAxiomsPackage) where
  chainComplex : Type u
  homologyGroups : ℕ → Type v
  functoriality : Prop
  longExactSequence : Prop
  excisionCompatibility : Prop

structure HomologyGroupsEvidence {H : HomologyAxiomsPackage} (G : HomologyGroupsPackage H) where
  functorialityClosed : G.functoriality
  longExactSequenceClosed : G.longExactSequence
  excisionCompatibilityClosed : G.excisionCompatibility

def HomologyGroupsClosed {H : HomologyAxiomsPackage} (G : HomologyGroupsPackage H) : Prop :=
  G.functoriality ∧ G.longExactSequence ∧ G.excisionCompatibility

theorem homology_groups_closed_from_evidence {H : HomologyAxiomsPackage} (G : HomologyGroupsPackage H) (E : HomologyGroupsEvidence G) : HomologyGroupsClosed G := by
  exact And.intro E.functorialityClosed (And.intro E.longExactSequenceClosed E.excisionCompatibilityClosed)

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse