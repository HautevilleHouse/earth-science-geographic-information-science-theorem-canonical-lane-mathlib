import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

structure RemoteSensingPackage where
  spectralResolution : Prop
  spatialResolution : Prop
  temporalResolution : Prop
  radiometricResolution : Prop
  cloudCoverCorrection : Prop
  sensorCalibration : Prop

structure RemoteSensingEvidence (R : RemoteSensingPackage) where
  spectralResolutionClosed : R.spectralResolution
  spatialResolutionClosed : R.spatialResolution
  temporalResolutionClosed : R.temporalResolution
  radiometricResolutionClosed : R.radiometricResolution
  cloudCoverCorrectionClosed : R.cloudCoverCorrection
  sensorCalibrationClosed : R.sensorCalibration

def RemoteSensingClosed (R : RemoteSensingPackage) : Prop :=
  R.spectralResolution ∧ R.spatialResolution ∧ R.temporalResolution ∧ R.radiometricResolution ∧ R.cloudCoverCorrection ∧ R.sensorCalibration

theorem remote_sensing_closed_from_evidence (R : RemoteSensingPackage) (E : RemoteSensingEvidence R) :
    RemoteSensingClosed R := by
  exact And.intro E.spectralResolutionClosed (And.intro E.spatialResolutionClosed (And.intro E.temporalResolutionClosed (And.intro E.radiometricResolutionClosed (And.intro E.cloudCoverCorrectionClosed E.sensorCalibrationClosed))))

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse