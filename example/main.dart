import 'package:example/flutter_telegram_login.dart';
import 'package:flutter/material.dart';

final TelegramLogin telegramLogin = TelegramLogin("", "", "");

void main() => runApp(MaterialApp(


        home: Material(
            child: Center(
                child: Column(children: [
      const SizedBox(height: 100),
      TextButton(
          onPressed: () async {
            var success = await telegramLogin.checkLogin();
            print(success);
          },
          child: const Text("loginTelegram")),
      ElevatedButton(
          onPressed: () async {
            var success = await telegramLogin.checkLogin();
            print(success);
          },
          child: const Text("checkLogin")),
      ElevatedButton(
          onPressed: () async {
            var data = await telegramLogin.getData();
            print(data);
            if (data) {
              print(telegramLogin.userData);
            }
          },
          child: const Text("getData")),
      ElevatedButton(
          onPressed: () async {
            await telegramLogin.telegramLaunch();
          },
          child: const Text("openTelegram")),
    ])))));
