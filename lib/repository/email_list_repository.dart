import 'package:help_app/data/storage.dart';
import 'package:help_app/models/email.dart';

const _delay = Duration(milliseconds: 3000);

class EmailListRepository {
  Future<List<Email>> loadData() {
    emailList.sort((a, b) => b.date.compareTo(a.date));

    return Future.delayed(_delay, () => emailList);
  }
}
