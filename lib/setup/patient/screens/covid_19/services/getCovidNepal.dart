import 'package:demo3/setup/patient/screens/covid_19/services/networkHelperNepal.dart';

class CovidNepal {
  Future<dynamic> getCovidNepalStatsMOHP() async {
    NetworkHelper networkHelper =
        NetworkHelper('https://covid19.mohp.gov.np/covid/api/confirmedcases');

    var covidData = await networkHelper.getData();
    return covidData != null ? covidData['nepal'] : 'somethingWentWrong';
  }
}
