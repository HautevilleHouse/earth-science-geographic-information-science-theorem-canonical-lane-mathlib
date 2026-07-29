import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.SpatialDataModel

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure UncertaintyQuantificationPackage {P : SpatialDataModelPackage} (S : SpatialDataModelEvidence P) where
  errorPropagation : Prop
  reliabilityIndex : Prop
  sensitivityAnalysis : Prop

structure UncertaintyQuantificationEvidence {P : SpatialDataModelPackage} {S : SpatialDataModelEvidence P} (U : UncertaintyQuantificationPackage S) where
  errorPropagationClosed : U.errorPropagation
  reliabilityIndexClosed : U.reliabilityIndex
  sensitivityAnalysisClosed : U.sensitivityAnalysis

def UncertaintyQuantificationClosed {P : SpatialDataModelPackage} {S : SpatialDataModelEvidence P} (U : UncertaintyQuantificationPackage S) : Prop :=
  U.errorPropagation ∧ U.reliabilityIndex ∧ U.sensitivityAnalysis

theorem uncertainty_quantification_closed_from_evidence {P : SpatialDataModelPackage} {S : SpatialDataModelEvidence P} (U : UncertaintyQuantificationPackage S) (E : UncertaintyQuantificationEvidence U) : UncertaintyQuantificationClosed U :=
  And.intro E.errorPropagationClosed (And.intro E.reliabilityIndexClosed E.sensitivityAnalysisClosed)

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse