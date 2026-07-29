import EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean.GeographicInformationScienceAdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.layerModel ∧ A.object.uncertaintyModeled

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end EarthScienceGeographicInformationScienceTheoremCanonicalLaneLean
end HautevilleHouse