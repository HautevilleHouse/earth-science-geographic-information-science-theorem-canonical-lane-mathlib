import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure CartographicPackage where
  mapProjection : Prop
  symbolization : Prop
  labeling : Prop
  generalization : Prop
  multiScaleRepresentation : Prop
  webMapping : Prop

structure CartographicEvidence (C : CartographicPackage) where
  mapProjectionClosed : C.mapProjection
  symbolizationClosed : C.symbolization
  labelingClosed : C.labeling
  generalizationClosed : C.generalization
  multiScaleRepresentationClosed : C.multiScaleRepresentation
  webMappingClosed : C.webMapping

def CartographicClosed (C : CartographicPackage) : Prop :=
  C.mapProjection ∧ C.symbolization ∧ C.labeling ∧ C.generalization ∧ C.multiScaleRepresentation ∧ C.webMapping

theorem cartographic_closed_from_evidence (C : CartographicPackage) (E : CartographicEvidence C) :
    CartographicClosed C := by
  exact And.intro E.mapProjectionClosed (And.intro E.symbolizationClosed (And.intro E.labelingClosed (And.intro E.generalizationClosed (And.intro E.multiScaleRepresentationClosed E.webMappingClosed))))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse