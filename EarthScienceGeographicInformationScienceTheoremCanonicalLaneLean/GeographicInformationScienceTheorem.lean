import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure EarthScienceGISAdmittedObject where
  spatialDataCarrier : Type u
  spatialTopology : TopologicalSpace spatialDataCarrier
  measurementScale : Prop
  spatialReferencingSystem : Prop
  conclusion : measurementScale ∧ spatialReferencingSystem

def EarthScienceGISWitnessClosed (O : EarthScienceGISAdmittedObject) : Prop :=
  O.measurementScale ∧ O.spatialReferencingSystem

structure AdmissibleClass where
  object : EarthScienceGISAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EarthScienceGISWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EarthScienceGISWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedGISClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gis_endgame (A : AdmissibleClass) : ConstrainedGISClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse
