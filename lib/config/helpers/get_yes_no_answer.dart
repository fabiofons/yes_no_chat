import 'package:yes_no_app/domain/entities/message.dart';
import 'package:dio/dio.dart';
import 'package:yes_no_app/infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer {

  final _dio = Dio(); //peticion HTTP

  Future<Message> getAnswer() async {

    final response = await _dio.get('https://yesno.wtf/api'); // response.data = Map<String, dynamic>
    final yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMessageEntity();
  }
}
