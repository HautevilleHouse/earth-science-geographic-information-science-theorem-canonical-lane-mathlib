import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure SpatialStatisticsPackage where
  pointPatternAnalysis : Prop
  geostatistics : Prop
  spatialAutocorrelation : Prop
  interpolation : Prop
  clusteringMethod : Prop
  variogramModel : Prop

structure SpatialStatisticsEvidence (S : SpatialStatisticsPackage) where
  pointPatternAnalysisClosed : S.pointPatternAnalysis
  geostatisticsClosed : S.geostatistics
  spatialAutocorrelationClosed : S.spatialAutocorrelation
  interpolationClosed : S.interpolation
  clusteringMethodClosed : S.clusteringMethod
  variogramModelClosed : S.variogramModel

def SpatialStatisticsClosed (S : SpatialStatisticsPackage) : Prop :=
  S.pointPatternAnalysis ∧ S.geostatistics ∧ S.spatialAutocorrelation ∧
  S.interpolation ∧ S.clusteringMethod ∧ S.variogramModel

theorem spatial_statistics_closed_from_evidence (S : SpatialStatisticsPackage)
    (E : SpatialStatisticsEvidence S) : SpatialStatisticsClosed S := by
  exact And.intro E.pointPatternAnalysisClosed
    (And.intro E.geostatisticsClosed
      (And.intro E.spatialAutocorrelationClosed
        (And.intro E.interpolationClosed
          (And.intro E.clusteringMethodClosed E.variogramModelClosed))))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse