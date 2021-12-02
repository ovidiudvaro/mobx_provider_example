import 'package:flutter_application_1/utils/network_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'NetworkUtils',
    () {
      test(
        'should return INTROVERT when score 3',
        () {
          NetworkUtils networkUtils = NetworkUtils();
          String expectedResult = 'INTROVERT';

          String actualResult = networkUtils.buildResultData(3);

          expect(actualResult, expectedResult);
        },
      );

      test(
        'should return INTROVERT and EXTROVERT when score between 3 and 7',
        () {
          NetworkUtils networkUtils = NetworkUtils();
          String expectedResult = 'Both, but more INTROVERT';

          String actualResult = networkUtils.buildResultData(6);

          expect(actualResult, expectedResult);
        },
      );

      test(
        'should return EXTROVERT and INTROVERT when score between 8 and 12',
        () {
          NetworkUtils networkUtils = NetworkUtils();
          String expectedResult = 'Both, but more EXTROVERT';
          String actualResult = networkUtils.buildResultData(10);

          expect(actualResult, expectedResult);
        },
      );

      test(
        'should return EXTROVERT when score 12',
        () {
          NetworkUtils networkUtils = NetworkUtils();
          String expectedResult = 'EXTROVERT';

          String actualResult = networkUtils.buildResultData(12);

          expect(actualResult, expectedResult);
        },
      );
    },
  );
}
