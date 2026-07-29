import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.EarthScienceGISAdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure SpatialDataInfrastructurePackage (A : EarthScienceAdmittedObject) where
  dataAcquisitionValid : Prop
  dataIntegrationValid : Prop
  dataQualityValid : Prop
  dataAcquisitionValidTerm : dataAcquisitionValid
  dataIntegrationValidTerm : dataIntegrationValid
  dataQualityValidTerm : dataQualityValid

structure SpatialDataInfrastructureEvidence (A : EarthScienceAdmittedObject) (P : SpatialDataInfrastructurePackage A) where
  dataAcquisitionValidClosed : P.dataAcquisitionValid
  dataIntegrationValidClosed : P.dataIntegrationValid
  dataQualityValidClosed : P.dataQualityValid

def SpatialDataInfrastructureClosed (A : EarthScienceAdmittedObject) (P : SpatialDataInfrastructurePackage A) : Prop :=
  P.dataAcquisitionValid ∧ P.dataIntegrationValid ∧ P.dataQualityValid

theorem spatial_data_infrastructure_closed_from_evidence (A : EarthScienceAdmittedObject) (P : SpatialDataInfrastructurePackage A) (E : SpatialDataInfrastructureEvidence A P) :
    SpatialDataInfrastructureClosed A P := by
  exact And.intro E.dataAcquisitionValidClosed (And.intro E.dataIntegrationValidClosed E.dataQualityValidClosed)

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse