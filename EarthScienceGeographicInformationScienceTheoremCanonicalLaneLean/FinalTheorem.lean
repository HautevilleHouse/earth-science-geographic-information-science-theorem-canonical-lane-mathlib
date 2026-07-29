import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

def ConstrainedEarthScienceGISClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_earthscience_gis_endgame (A : AdmissibleClass) :
    ConstrainedEarthScienceGISClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse