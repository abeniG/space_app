import 'package:stacked/stacked.dart';
import 'package:space_app/services/api_service.dart';
import 'package:space_app/models/solar_planets/solar_planets.dart';

class SollarSystemViewModel extends BaseViewModel {
  final ApiService _apiService = ApiService();
  List<SolarPlanets> _planet = [];
  List<SolarPlanets> get planet => _planet;



Map<String, String> defaultImages = {
  'earth' : 'assets/sollarSystem/earth.png',
  'jupiter' : 'assets/sollarSystem/jupiter.png',
  'mars' : 'assets/sollarSystem/mars.png',
  'mercury' : 'assets/sollarSystem/mercury.png',
  'saturn' : 'assets/sollarSystem/saturn.png',
  'uranus' : 'assets/sollarSystem/uranus.png',
  'venus' : 'assets/sollarSystem/venus.png',
  'neptune': 'assets/sollarSystem/mercury.png'
};
Map<String, String> defaultDiscription = {
  'earth' : 'Earth is our home planet, rich in diverse ecosystems, supporting life and dynamic environments.',
  'jupiter' : 'Jupiter is the largest planet, a gas giant with strong storms, like the Great Red Spot.',
  'mars' : 'Mars, the Red Planet, has a thin atmosphere, polar ice caps, and potential signs of water.',
  'mercury' : 'Mercury is the smallest planet, closest to the Sun, with extreme temperatures and no atmosphere.',
  'saturn' : 'Saturn is a gas giant, famous for its stunning ring system, and has many moons.',
  'uranus' : 'Uranus is an ice giant with a tilted axis, faint rings, and a cold, methane-rich atmosphere.',
  'venus' : 'Venus is a rocky planet with a thick, toxic atmosphere, extreme surface heat, and volcanic activity.',
  'neptune' : 'Neptune, the eighth planet, is a gas giant known for its deep blue color and strong winds.'
};


  Future<void> planetsData() async {
    _planet = await _apiService.fetchPlanetsInfo();
    _planet = _planet.map((planet){
      return planet.copyWith(
        discription: defaultDiscription[planet.englishName.toLowerCase()] ?? planet.discription,
        image: defaultImages[planet.englishName.toLowerCase()] ?? planet.image
      );
    }).toList();
      notifyListeners();
  }
  
  int currentIndex = 0;
  SolarPlanets get currentPlanet => planet[currentIndex];
  void next() {
    if (currentIndex == planet.length - 1) {
      currentIndex;
    }
    if (currentIndex < planet.length - 1) {
      currentIndex++;
    }
    notifyListeners();
  }

  void prev() {
    if (currentIndex == 0) {
      currentIndex;
    }
    if (currentIndex > 0) {
      currentIndex--;
    }
    notifyListeners();
  }
}
