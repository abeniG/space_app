import 'package:stacked/stacked.dart';
import 'package:space_app/services/api_service.dart';
import 'package:space_app/models/solar_planets/solar_planets.dart';

class SollarSystemViewModel extends BaseViewModel {
  final ApiService _apiService = ApiService();
  List<SolarPlanets> _planet = [];
  List<SolarPlanets> get planet => _planet;

  @override
  List<Map> planets = [
    //earth
    {
      'img': 'assets/sollarSystem/earth.png',
      'discription':
          'Earth is our home planet, rich in diverse ecosystems, supporting life and dynamic environments.',
    },
    //jupiter
    {
      'img': 'assets/sollarSystem/jupiter.png',
      'discription':
          'Jupiter is the largest planet, a gas giant with strong storms, like the Great Red Spot.',
    },
    //mars
    {
      'img': 'assets/sollarSystem/mars.png',
      'discription':
          'Mars, the Red Planet, has a thin atmosphere, polar ice caps, and potential signs of water.',
    },
    //mercury
    {
      'img': 'assets/sollarSystem/mercury.png',
      'discription':
          'Mercury is the smallest planet, closest to the Sun, with extreme temperatures and no atmosphere.',
    },
    //saturn
    {
      'img': 'assets/sollarSystem/saturn.png',
      'discription':
          'Saturn is a gas giant, famous for its stunning ring system, and has many moons.',
    },
    //sun
    {
      'img': 'assets/sollarSystem/sun.png',
      'discription':
          "The Sun is a massive, luminous star at the solar system's center, providing heat and light.",
    },
    //uranus
    {
      'img': 'assets/sollarSystem/uranus.png',
      'discription':
          'Uranus is an ice giant with a tilted axis, faint rings, and a cold, methane-rich atmosphere.',
    },
    //venus
    {
      'img': 'assets/sollarSystem/venus.png',
      'discription':
          'Venus is a rocky planet with a thick, toxic atmosphere, extreme surface heat, and volcanic activity.',
    }
  ];

  Future<void> planetsData() async {
    _planet = await _apiService.fetchPlanetsInfo();
    notifyListeners();
  }

  int currentIndex = 0;
  SolarPlanets get currentPlanet => planet[currentIndex] as SolarPlanets;
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
