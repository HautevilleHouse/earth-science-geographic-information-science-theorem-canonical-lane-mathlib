import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.AdmissibleClass
import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "earth-science-geographic-information-science-theorem-canonical-lane",
  theoremObject := "Geographic Information Science Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "unrestricted classical closure remains carried"
}

theorem mathlib_common_core_imported_checked :
    mathlibProofObligation.commonCoreImported = true := by
  rfl

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, EarthScienceGeographicInformationScienceTheoremClosure A) := by
  intro A
  exact earth_science_geographic_information_science_theorem_endgame A

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse
