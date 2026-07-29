import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.CoordinateReferenceSystemGate

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

def ConstrainedEarthScienceGISClosure (A : EarthScienceAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gis_endgame (A : EarthScienceAdmittedObject) :
    ConstrainedEarthScienceGISClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse