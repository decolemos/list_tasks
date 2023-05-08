import 'dart:developer';

import 'package:flutter/material.dart';

import '../models/task.dart';

//Classe de controle da lista
class TaskController extends ChangeNotifier {
  
  //Criar Lista vazia 
  List<Task> _list = [];

  //
  List<Task> get tasks => _list;

  //CREATE
  //função add que passa os parametros que precisam ser adicionados.
  add(int number, String name, String description, String applicant) {
    //Acessar a lista que foi criada utilizando o metodo add.
    _list.add(
      //Instanciar a classe que foi criada e informar os valores a ser adicionados.
      Task(
        number: number,
        name: name,
        description: description,
        applicant: applicant
      )
    );
  }

  //READE
  //Função para ler a lista
  read() {
    //Condição que vai percorrer a lista para conseguir exibir tudo que esta dentro dessa lista.
    for(int index = 0; index < _list.length; index++){
      log(_list[index].toString());
    }
  }

  //UPDATE
  update(Task updatedTask) {
    int index = _list.indexWhere((task) => updatedTask.number == task.number);
    _list[index] = updatedTask; 
  }

  //DELETE
  delete(Task removedTask) {
    int index = _list.indexWhere((task) => removedTask.number == task.number);
    _list.removeAt(index);
  }
}