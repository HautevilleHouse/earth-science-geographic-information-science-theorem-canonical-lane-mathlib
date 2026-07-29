import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure EarthObservationPackage where
  spatialResolution : Type u
  temporalResolution : Type v
  spectralBands : Nat
  radiometricQuantization : Nat
  orbitalParameters : Prop
  dataLatency : Prop
  swathWidth : Prop
  revisitFrequency : Prop

structure EarthObservationEvidence (O : EarthObservationPackage) where
  spatialResolutionClosed : O.spatialResolution
  temporalResolutionClosed : O.temporalResolution
  spectralBandsClosed : O.spectralBands
  radiometricQuantizationClosed : O.radiometricQuantization
  orbitalParametersClosed : O.orbitalParameters
  dataLatencyClosed : O.dataLatency
  swathWidthClosed : O.swathWidth
  revisitFrequencyClosed : O.revisitFrequency

def EarthObservationClosed (O : EarthObservationPackage) : Prop :=
  O.orbitalParameters ∧ O.dataLatency ∧ O.swathWidth ∧ O.revisitFrequency

theorem earth_observation_closed_from_evidence (O : EarthObservationPackage)
    (E : EarthObservationEvidence O) : EarthObservationClosed O := by
  exact And.intro E.orbitalParametersClosed
    (And.intro E.dataLatencyClosed
      (And.intro E.swathWidthClosed E.revisitFrequencyClosed))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse