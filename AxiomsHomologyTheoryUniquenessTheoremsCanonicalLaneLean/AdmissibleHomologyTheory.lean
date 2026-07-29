import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure HomologyAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  abelianGroup : AbelianGroup (carrier)
  homotopyInvariant : Prop
  exactness : Prop
  excision : Prop
  dimension : Prop
  additivity : Prop
  conclusion : homotopyInvariant ∧ exactness ∧ excision ∧ dimension ∧ additivity

structure AdmissibleClass where
  object : HomologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.homotopyInvariant ∧ A.object.exactness ∧ A.object.excision ∧ A.object.dimension ∧ A.object.additivity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse