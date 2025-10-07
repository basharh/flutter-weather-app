import 'package:mockito/annotations.dart';
import 'package:weather/services/google_places/google_places.dart';
import 'package:weather/services/open_mateo/open_mateo.dart'
    show OpenMateoService;

@GenerateNiceMocks([MockSpec<OpenMateoService>()])
@GenerateNiceMocks([MockSpec<GooglePlacesService>()])
import 'mocks.mocks.dart';
