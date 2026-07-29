import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure HomologyUniquenessPackage {H : HomologyTheoryObject} (A : EilenbergSteenrodPackage H) where
  firstHomologyTheory : H.homologyFunctors
  secondHomologyTheory : H.homologyFunctors
  naturalIsomorphismExists : Prop
  uniquenessCondition : Prop

structure HomologyUniquenessEvidence {H : HomologyTheoryObject} {A : EilenbergSteenrodPackage H}
    (U : HomologyUniquenessPackage A) where
  firstHomologyTheoryClosed : U.firstHomologyTheory ∈ H.homologyFunctors
  secondHomologyTheoryClosed : U.secondHomologyTheory ∈ H.homologyFunctors
  naturalIsomorphismExistsClosed : U.naturalIsomorphismExists
  uniquenessConditionClosed : U.uniquenessCondition

def HomologyUniquenessClosed {H : HomologyTheoryObject} {A : EilenbergSteenrodPackage H}
    (U : HomologyUniquenessPackage A) : Prop :=
  U.naturalIsomorphismExists ∧ U.uniquenessCondition

theorem homology_uniqueness_closed_from_evidence
    {H : HomologyTheoryObject} {A : EilenbergSteenrodPackage H}
    (U : HomologyUniquenessPackage A) (E : HomologyUniquenessEvidence U) :
    HomologyUniquenessClosed U := by
  exact And.intro E.naturalIsomorphismExistsClosed E.uniquenessConditionClosed

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse