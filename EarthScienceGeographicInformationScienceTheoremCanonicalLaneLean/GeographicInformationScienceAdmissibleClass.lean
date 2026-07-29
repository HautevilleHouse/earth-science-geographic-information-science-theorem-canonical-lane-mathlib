import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure GeographicInformationScienceAdmittedObject where
  spatialContext : Type
  layerModel : Prop
  uncertaintyModeled : Prop
  conclusion : layerModel ∧ uncertaintyModeled

structure AdmissibleClass where
  object : GeographicInformationScienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.layerModel ∧ A.object.uncertaintyModeled) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse