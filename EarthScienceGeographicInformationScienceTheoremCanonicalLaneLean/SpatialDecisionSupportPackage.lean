import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.SpatialStatisticsPackage

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure SpatialDecisionSupportPackage {S : SpatialStatisticsPackage}
    (St : SpatialStatisticsEvidence S) where
  multiCriteriaAnalysis : Prop
  siteSelection : Prop
  landUseAllocation : Prop
  networkRouting : Prop
  optimizationModel : Prop

structure SpatialDecisionSupportEvidence {S : SpatialStatisticsPackage}
    {St : SpatialStatisticsEvidence S} (D : SpatialDecisionSupportPackage St) where
  multiCriteriaAnalysisClosed : D.multiCriteriaAnalysis
  siteSelectionClosed : D.siteSelection
  landUseAllocationClosed : D.landUseAllocation
  networkRoutingClosed : D.networkRouting
  optimizationModelClosed : D.optimizationModel

def SpatialDecisionSupportClosed {S : SpatialStatisticsPackage}
    {St : SpatialStatisticsEvidence S} (D : SpatialDecisionSupportPackage St) : Prop :=
  D.multiCriteriaAnalysis ∧ D.siteSelection ∧ D.landUseAllocation ∧
  D.networkRouting ∧ D.optimizationModel

theorem spatial_decision_support_closed_from_evidence
    {S : SpatialStatisticsPackage} {St : SpatialStatisticsEvidence S}
    (D : SpatialDecisionSupportPackage St) (Ev : SpatialDecisionSupportEvidence D) :
    SpatialDecisionSupportClosed D := by
  exact And.intro Ev.multiCriteriaAnalysisClosed
    (And.intro Ev.siteSelectionClosed
      (And.intro Ev.landUseAllocationClosed
        (And.intro Ev.networkRoutingClosed Ev.optimizationModelClosed)))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse