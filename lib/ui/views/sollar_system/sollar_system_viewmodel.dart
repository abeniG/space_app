import 'package:stacked/stacked.dart';

class SollarSystemViewModel extends BaseViewModel {
  List<Map> Planets = [
    //earth
    {
      'name': 'Earth',
      'img': 'assets/sollarSystem/earth.png',
      'discription':
          'Earth is our home planet, rich in diverse ecosystems, supporting life and dynamic environments.',
      'distance': '93M miles',
      'light': '8.31 Mins',
      'year': '365.25 Days'
    },
    //jupiter
    {
      'name': 'Jupiter',
      'img': 'assets/sollarSystem/jupiter.png',
      'discription':
          'Jupiter is the largest planet, a gas giant with strong storms, like the Great Red Spot.',
      'distance': '484M miles',
      'light': '43.3 Mins',
      'year': '4,332 Days'
    },
    //mars
    {
      'name': 'Mars',
      'img': 'assets/sollarSystem/mars.png',
      'discription':
          'Mars, the Red Planet, has a thin atmosphere, polar ice caps, and potential signs of water.',
      'distance': '141.6M miles',
      'light': '12.7 Mins',
      'year': '687 Days'
    },
    //mercury
    {
      'name': 'Mercury',
      'img': 'assets/sollarSystem/mercury.png',
      'discription':
          'Mercury is the smallest planet, closest to the Sun, with extreme temperatures and no atmosphere.',
      'distance': '36M miles',
      'light': '3.22 Mins',
      'year': '88 Days'
    },
    //saturn
    {
      'name': 'Saturn',
      'img': 'assets/sollarSystem/saturn.png',
      'discription':
          'Saturn is a gas giant, famous for its stunning ring system, and has many moons.',
      'distance': '886M miles',
      'light': '1.2 Mins',
      'year': '10,759 Days',
    },
    //sun
    {
      'name': 'Sun',
      'img': 'assets/sollarSystem/sun.png',
      'discription':
          "The Sun is a massive, luminous star at the solar system's center, providing heat and light.",
      'distance': '93M miles',
      'light': '8.31 Mins',
      'year': '__',
    },
    //uranus
    {
      'name': 'Uranus',
      'img': 'assets/sollarSystem/uranus.png',
      'discription':
          'Uranus is an ice giant with a tilted axis, faint rings, and a cold, methane-rich atmosphere.',
      'distance': '1.7B miles',
      'light': '2.66 Mins',
      'year': '30,687 Days',
    },
    //venus
    {
      'name': 'Venus',
      'img': 'assets/sollarSystem/venus.png',
      'discription':
          'Venus is a rocky planet with a thick, toxic atmosphere, extreme surface heat, and volcanic activity.',
      'distance': '67.2M miles',
      'light': '6.02 Mins',
      'year': '225 Days'
    }
  ];
  int currentIndex = 0;
  void next() {
    if (currentIndex == Planets.length - 1) {
      currentIndex;
    }
    if (currentIndex < Planets.length - 1) {
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
