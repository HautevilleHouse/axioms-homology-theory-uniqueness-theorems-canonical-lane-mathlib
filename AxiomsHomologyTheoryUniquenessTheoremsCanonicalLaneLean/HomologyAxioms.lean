import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure HomologyAxiomsPackage where
  dimension : ℕ
  abelianGroupType : Type u
  exactnessAxiom : Prop
  excisionAxiom : Prop
  additivityAxiom : Prop
  dimensionAxiom : Prop
  exactnessAxiomTerm : exactnessAxiom
  excisionAxiomTerm : excisionAxiom
  additivityAxiomTerm : additivityAxiom
  dimensionAxiomTerm : dimensionAxiom

structure HomologyAxiomsEvidence (H : HomologyAxiomsPackage) where
  exactnessClosed : H.exactnessAxiom
  excisionClosed : H.excisionAxiom
  additivityClosed : H.additivityAxiom
  dimensionClosed : H.dimensionAxiom

def HomologyAxiomsClosed (H : HomologyAxiomsPackage) : Prop :=
  H.exactnessAxiom ∧ H.excisionAxiom ∧ H.additivityAxiom ∧ H.dimensionAxiom

theorem homology_axioms_closed_from_evidence (H : HomologyAxiomsPackage) (E : HomologyAxiomsEvidence H) : HomologyAxiomsClosed H := by
  exact And.intro E.exactnessClosed (And.intro E.excisionClosed (And.intro E.additivityClosed E.dimensionClosed))

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse