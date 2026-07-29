import AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  domainConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "axioms-homology-theory-uniqueness-theorems-canonical-lane"

def sourceDescription : String :=
  "Axioms Homology Theory Uniqueness Theorems"

def sourceTheoremBoundary : String :=
  "Classical source boundary: the standard algebraic topology axioms for homology theory imply uniqueness of the Eilenberg–Steenrod axioms."

def baselineCertificateLane : String :=
  "domain_constrained"

noncomputable def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  domainConstrainedStatement := "domain-constrained theorem certificate internalized through bridge and gate closure for the Eilenberg–Steenrod uniqueness.",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "Classical source boundary carried: the unrestricted classical closure remains outside the constrained closure."
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end AxiomsHomologyTheoryUniquenessTheoremsCanonicalLaneLean
end HautevilleHouse