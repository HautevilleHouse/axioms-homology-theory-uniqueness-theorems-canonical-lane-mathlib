import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure ExcisionTheoremPackage {P : EilenbergSteenrodAxiomsPackage} where
  spaces : Type u
  inclusion : Type
  inducedIsomorphism : Prop
  axiomDerived : Prop

structure ExcisionTheoremEvidence {P : EilenbergSteenrodAxiomsPackage}
    (E : ExcisionTheoremPackage P) where
  inducedIsomorphismClosed : E.inducedIsomorphism
  axiomDerivedClosed : E.axiomDerived

def ExcisionTheoremClosed {P : EilenbergSteenrodAxiomsPackage}
    (E : ExcisionTheoremPackage P) : Prop :=
  E.inducedIsomorphism ∧ E.axiomDerived

theorem excision_theorem_closed_from_evidence {P : EilenbergSteenrodAxiomsPackage}
    (E : ExcisionTheoremPackage P) (Ev : ExcisionTheoremEvidence E) :
    ExcisionTheoremClosed E := by
  exact And.intro Ev.inducedIsomorphismClosed Ev.axiomDerivedClosed

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse