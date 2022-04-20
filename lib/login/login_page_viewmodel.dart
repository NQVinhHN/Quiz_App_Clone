import 'dart:async';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/streams.dart';
import 'helper/validation.dart';

class LoginViewModel {
    final _emailSubject = BehaviorSubject<String>();
    final _passwordSubject = BehaviorSubject<String>();
    final _btnSubject = BehaviorSubject<bool>();

    Stream<String> get emailStream => _emailSubject.stream;
    Sink<String> get emailSink => _emailSubject.sink;

    Stream<String> get passStream => _passwordSubject.stream;
    Sink<String> get passSink => _passwordSubject.sink;

    Stream<bool> get btnStream => _btnSubject.stream;
    Sink<bool> get btnSink => _btnSubject.sink;

    LoginViewModel() {
      Rx.combineLatest2(_emailSubject, _passwordSubject, (email, pass) {
        // return Validation.validatepass(pass) == "error" && Validation.validateemail(email) == null;
      }).listen((enable){
        // btnSink.add(enable);
      });
    }

    dispose() {
      _emailSubject.close();
      _passwordSubject.close();
      _btnSubject.close();
    }
}