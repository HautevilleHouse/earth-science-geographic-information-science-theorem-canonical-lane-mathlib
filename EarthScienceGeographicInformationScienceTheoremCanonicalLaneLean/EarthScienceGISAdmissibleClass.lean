import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure EarthScienceAdmittedObject where
  spatialObject : Type u
  coordinateReferenceSystem : Prop
  spatialAnalytics : Prop
  conclusion : coordinateReferenceSystem ∧ spatialAnalytics

structure AdmissibleClass (A : EarthScienceAdmittedObject) where
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : EarthScienceAdmittedObject) : Prop :=
  A.conclusion

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse