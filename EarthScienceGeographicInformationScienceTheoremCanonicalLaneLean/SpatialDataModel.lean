import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure SpatialDataPackage where
  rasterModel : Prop
  vectorModel : Prop
  coordinateReferenceSystem : Prop
  metadataStandard : Prop

structure SpatialDataEvidence (P : SpatialDataPackage) where
  rasterModelClosed : P.rasterModel
  vectorModelClosed : P.vectorModel
  coordinateReferenceSystemClosed : P.coordinateReferenceSystem
  metadataStandardClosed : P.metadataStandard

def SpatialDataClosed (P : SpatialDataPackage) : Prop :=
  P.rasterModel ∧ P.vectorModel ∧ P.coordinateReferenceSystem ∧ P.metadataStandard

theorem spatial_data_closed_from_evidence (P : SpatialDataPackage) (E : SpatialDataEvidence P) : SpatialDataClosed P := by
  exact And.intro E.rasterModelClosed (And.intro E.vectorModelClosed (And.intro E.coordinateReferenceSystemClosed E.metadataStandardClosed))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse
