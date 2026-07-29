import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure UniquenessTheoremPackage {H : HomologyAxiomsPackage} {G : HomologyGroupsPackage H} (E : EilenbergSteenrodAxiomsPackage G) where
  existsUniqueNaturalIsomorphism : Prop
  uniquenessStatement : Prop
  globalConstraint : Prop
  
structure UniquenessTheoremEvidence {H : HomologyAxiomsPackage} {G : HomologyGroupsPackage H} {E : EilenbergSteenrodAxiomsPackage G} (U : UniquenessTheoremPackage E) where
  existsUniqueNaturalIsomorphismClosed : U.existsUniqueNaturalIsomorphism
  uniquenessStatementClosed : U.uniquenessStatement
  globalConstraintClosed : U.globalConstraint

def UniquenessTheoremClosed {H : HomologyAxiomsPackage} {G : HomologyGroupsPackage H} {E : EilenbergSteenrodAxiomsPackage G} (U : UniquenessTheoremPackage E) : Prop :=
  U.existsUniqueNaturalIsomorphism ∧ U.uniquenessStatement ∧ U.globalConstraint

theorem uniqueness_theorem_closed_from_evidence {H : HomologyAxiomsPackage} {G : HomologyGroupsPackage H} {E : EilenbergSteenrodAxiomsPackage G} (U : UniquenessTheoremPackage E) (Ev : UniquenessTheoremEvidence U) : UniquenessTheoremClosed U := by
  exact And.intro Ev.existsUniqueNaturalIsomorphismClosed (And.intro Ev.uniquenessStatementClosed Ev.globalConstraintClosed)

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse