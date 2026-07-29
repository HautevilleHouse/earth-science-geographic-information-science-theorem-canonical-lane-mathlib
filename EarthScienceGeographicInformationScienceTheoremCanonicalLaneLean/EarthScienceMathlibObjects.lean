import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure EarthScienceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EarthScienceAdmittedObject where
  space : EarthScienceSpace
  geographicRegion : Prop
  spatialContinuity : Prop
  attributeMap : Prop
  spatialResolution : Prop
  conclusion : spatialResolution

def EarthScienceWitnessClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.spatialResolution

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse
