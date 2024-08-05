import 'dart:convert';

import 'package:flash_sniper/model/order.dart';
import 'package:flash_sniper/model/position.dart';
import 'package:http/http.dart' as http;

const dhanBaseUrl = "https://api.dhan.co";

Future<Position> dhanGetPositions(String jwt) async {
  final headers = {
    'Content-Type': 'application/json',
    'access-token': jwt,
  };

  final url = Uri.parse('$dhanBaseUrl/positions');

  final res = await http.get(url, headers: headers);
  final status = res.statusCode;
  if (status != 200) throw Exception('http.get error: statusCode= $status');
  final Map<String, dynamic> data = json.decode(res.body);
  return Position.fromJson(data);
}

Future<String> dhanGetFunds(String jwt) async {
  final headers = {
    'Content-Type': 'application/json',
    'access-token': jwt,
  };

  final url = Uri.parse('$dhanBaseUrl/fundlimit');

  final res = await http.get(url, headers: headers);
  final status = res.statusCode;
  if (status != 200) throw Exception('http.get error: statusCode= $status');

  return res.body;
}

Future<String> dhanExecuteOrder(String jwt, Order req) async {
  final headers = {
    'Content-Type': 'application/json',
    'access-token': jwt,
  };

  final data = req.toJson();

  final url = Uri.parse('$dhanBaseUrl/orders');

  final res = await http.post(url, headers: headers, body: data);
  final status = res.statusCode;
  if (status != 200) throw Exception('http.post error: statusCode= $status');

  return res.body;
}
