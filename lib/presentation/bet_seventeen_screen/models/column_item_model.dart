import 'package:flutter/material.dart';import '../../../core/app_export.dart';/// This class is used in the [column_item_widget] screen.
class ColumnItemModel {ColumnItemModel({this.textOne, this.columnOneController, this.id, }) { textOne = textOne  ?? Rx("1");columnOneController = columnOneController  ?? TextEditingController();id = id  ?? Rx(""); }

Rx<String>? textOne;

TextEditingController? columnOneController;

Rx<String>? id;

 }
