import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.EarthObservationModels

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure GeographicInformationSystemPackage {O : EarthObservationPackage}
    (E : EarthObservationEvidence O) where
  spatialDataModel : Prop
  topologicalRelations : Prop
  rasterVectorIntegration : Prop
  coordinateReferenceSystem : Prop
  metadataCatalog : Prop
  webMappingService : Prop

structure GeographicInformationSystemEvidence {O : EarthObservationPackage}
    {E : EarthObservationEvidence O} (G : GeographicInformationSystemPackage E) where
  spatialDataModelClosed : G.spatialDataModel
  topologicalRelationsClosed : G.topologicalRelations
  rasterVectorIntegrationClosed : G.rasterVectorIntegration
  coordinateReferenceSystemClosed : G.coordinateReferenceSystem
  metadataCatalogClosed : G.metadataCatalog
  webMappingServiceClosed : G.webMappingService

def GeographicInformationSystemClosed {O : EarthObservationPackage}
    {E : EarthObservationEvidence O} (G : GeographicInformationSystemPackage E) : Prop :=
  G.spatialDataModel ∧ G.topologicalRelations ∧ G.rasterVectorIntegration ∧
  G.coordinateReferenceSystem ∧ G.metadataCatalog ∧ G.webMappingService

theorem geographic_information_system_closed_from_evidence
    {O : EarthObservationPackage} {E : EarthObservationEvidence O}
    (G : GeographicInformationSystemPackage E) (Ev : GeographicInformationSystemEvidence G) :
    GeographicInformationSystemClosed G := by
  exact And.intro Ev.spatialDataModelClosed
    (And.intro Ev.topologicalRelationsClosed
      (And.intro Ev.rasterVectorIntegrationClosed
        (And.intro Ev.coordinateReferenceSystemClosed
          (And.intro Ev.metadataCatalogClosed Ev.webMappingServiceClosed))))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse