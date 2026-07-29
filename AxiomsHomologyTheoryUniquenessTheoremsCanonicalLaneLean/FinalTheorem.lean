import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.HomologyUniquenessBridge

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

def ConstrainedHomologyUniquenessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_homology_uniqueness_endgame (A : AdmissibleClass) :
    ConstrainedHomologyUniquenessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse