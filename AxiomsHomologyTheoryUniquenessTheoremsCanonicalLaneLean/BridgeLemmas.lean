import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.satisfiesAxioms

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse