import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse