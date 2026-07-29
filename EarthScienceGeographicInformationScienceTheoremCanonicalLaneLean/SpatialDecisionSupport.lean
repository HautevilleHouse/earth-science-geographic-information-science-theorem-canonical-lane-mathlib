import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure SpatialDecisionSupportPackage where
  multiCriteriaAnalysis : Prop
  siteSelection : Prop
  landUseSuitability : Prop
  spatialOptimization : Prop
  participatoryGIS : Prop
  uncertaintyModeling : Prop

structure SpatialDecisionSupportEvidence (S : SpatialDecisionSupportPackage) where
  multiCriteriaAnalysisClosed : S.multiCriteriaAnalysis
  siteSelectionClosed : S.siteSelection
  landUseSuitabilityClosed : S.landUseSuitability
  spatialOptimizationClosed : S.spatialOptimization
  participatoryGISClosed : S.participatoryGIS
  uncertaintyModelingClosed : S.uncertaintyModeling

def SpatialDecisionSupportClosed (S : SpatialDecisionSupportPackage) : Prop :=
  S.multiCriteriaAnalysis ∧ S.siteSelection ∧ S.landUseSuitability ∧ S.spatialOptimization ∧ S.participatoryGIS ∧ S.uncertaintyModeling

theorem spatial_decision_support_closed_from_evidence (S : SpatialDecisionSupportPackage) (E : SpatialDecisionSupportEvidence S) :
    SpatialDecisionSupportClosed S := by
  exact And.intro E.multiCriteriaAnalysisClosed (And.intro E.siteSelectionClosed (And.intro E.landUseSuitabilityClosed (And.intro E.spatialOptimizationClosed (And.intro E.participatoryGISClosed E.uncertaintyModelingClosed))))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse