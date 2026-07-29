import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure HomologyAdmittedObject where
  space : Type u
  homologyGroups : ℕ → Type v
  satisfiesAxioms : Prop
  conclusion : satisfiesAxioms

structure AdmissibleClass where
  object : HomologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (by
    have : Prop := A.object.satisfiesAxioms
    exact this) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse