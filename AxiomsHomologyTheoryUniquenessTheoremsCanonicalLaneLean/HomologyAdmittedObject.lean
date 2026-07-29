import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure HomologyAdmittedObject where
  carrier : Type
  homologyGroups : ℕ → Type
  isHomologyTheory : Prop
  conclusion : isHomologyTheory

def HomologyWitnessClosed (O : HomologyAdmittedObject) : Prop :=
  O.isHomologyTheory

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse
