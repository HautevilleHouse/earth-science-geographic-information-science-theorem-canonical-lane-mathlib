import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure SpatialStatisticsPackage where
  spatialAutocorrelation : Prop
  locationalEntropy : Prop
  krigingInterpolation : Prop
  spatialClustering : Prop

structure SpatialStatisticsEvidence (P : SpatialStatisticsPackage) where
  spatialAutocorrelationClosed : P.spatialAutocorrelation
  locationalEntropyClosed : P.locationalEntropy
  krigingInterpolationClosed : P.krigingInterpolation
  spatialClusteringClosed : P.spatialClustering

def SpatialStatisticsClosed (P : SpatialStatisticsPackage) : Prop :=
  P.spatialAutocorrelation ∧ P.locationalEntropy ∧ P.krigingInterpolation ∧ P.spatialClustering

theorem spatial_statistics_closed_from_evidence (P : SpatialStatisticsPackage) (E : SpatialStatisticsEvidence P) : SpatialStatisticsClosed P := by
  exact And.intro E.spatialAutocorrelationClosed (And.intro E.locationalEntropyClosed (And.intro E.krigingInterpolationClosed E.spatialClusteringClosed))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse
