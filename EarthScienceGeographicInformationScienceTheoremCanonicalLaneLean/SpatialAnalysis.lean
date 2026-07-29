import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure SpatialAnalysisPackage where
  spatialQuery : Prop
  spatialJoin : Prop
  overlayOperation : Prop
  proximityAnalysis : Prop

structure SpatialAnalysisEvidence (P : SpatialAnalysisPackage) where
  spatialQueryClosed : P.spatialQuery
  spatialJoinClosed : P.spatialJoin
  overlayOperationClosed : P.overlayOperation
  proximityAnalysisClosed : P.proximityAnalysis

def SpatialAnalysisClosed (P : SpatialAnalysisPackage) : Prop :=
  P.spatialQuery ∧ P.spatialJoin ∧ P.overlayOperation ∧ P.proximityAnalysis

theorem spatial_analysis_closed_from_evidence (P : SpatialAnalysisPackage) (E : SpatialAnalysisEvidence P) : SpatialAnalysisClosed P := by
  exact And.intro E.spatialQueryClosed (And.intro E.spatialJoinClosed (And.intro E.overlayOperationClosed E.proximityAnalysisClosed))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse
