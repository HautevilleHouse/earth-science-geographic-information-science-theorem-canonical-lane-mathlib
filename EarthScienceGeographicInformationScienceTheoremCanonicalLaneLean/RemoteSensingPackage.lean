import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.EarthObservationModels

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure RemoteSensingPackage {O : EarthObservationPackage}
    (E : EarthObservationEvidence O) where
  atmosphericCorrection : Prop
  geometricCorrection : Prop
  imageFusion : Prop
  classificationAlgorithm : Prop
  changeDetection : Prop
  vegetationIndices : Prop
  thermalInertia : Prop

structure RemoteSensingEvidence {O : EarthObservationPackage}
    {E : EarthObservationEvidence O} (R : RemoteSensingPackage E) where
  atmosphericCorrectionClosed : R.atmosphericCorrection
  geometricCorrectionClosed : R.geometricCorrection
  imageFusionClosed : R.imageFusion
  classificationAlgorithmClosed : R.classificationAlgorithm
  changeDetectionClosed : R.changeDetection
  vegetationIndicesClosed : R.vegetationIndices
  thermalInertiaClosed : R.thermalInertia

def RemoteSensingClosed {O : EarthObservationPackage}
    {E : EarthObservationEvidence O} (R : RemoteSensingPackage E) : Prop :=
  R.atmosphericCorrection ∧ R.geometricCorrection ∧ R.imageFusion ∧
  R.classificationAlgorithm ∧ R.changeDetection ∧ R.vegetationIndices ∧ R.thermalInertia

theorem remote_sensing_closed_from_evidence
    {O : EarthObservationPackage} {E : EarthObservationEvidence O}
    (R : RemoteSensingPackage E) (Ev : RemoteSensingEvidence R) : RemoteSensingClosed R := by
  exact And.intro Ev.atmosphericCorrectionClosed
    (And.intro Ev.geometricCorrectionClosed
      (And.intro Ev.imageFusionClosed
        (And.intro Ev.classificationAlgorithmClosed
          (And.intro Ev.changeDetectionClosed
            (And.intro Ev.vegetationIndicesClosed Ev.thermalInertiaClosed)))))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse