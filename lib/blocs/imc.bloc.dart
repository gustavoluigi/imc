import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    if (heightCtrl.text.isEmpty || weightCtrl.text.isEmpty) {
      result = "Preencha os campos vazios";
    } else {
      double weight = double.parse(weightCtrl.text);
      double height = double.parse(heightCtrl.text) / 100;
      double imc = weight / (height * height);
      if (imc < 16) {
        result = "Magreza Grau III (${imc.toStringAsPrecision(2)})";
      } else if (imc >= 16 && imc <= 16.9) {
        result = "Magreza Grau II (${imc.toStringAsPrecision(2)})";
      } else if (imc >= 17 && imc <= 18.4) {
        result = "Magreza Grau I (${imc.toStringAsPrecision(2)})";
      } else if (imc >= 18.5 && imc <= 24.9) {
        result = "Eutrofia (${imc.toStringAsPrecision(2)})";
      } else if (imc >= 25 && imc <= 29.9) {
        result = "Sobrepeso (${imc.toStringAsPrecision(2)})";
      } else if (imc >= 30 && imc <= 34.9) {
        result = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
      } else if (imc >= 35 && imc <= 40) {
        result = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
      } else if (imc > 40) {
        result = "Obesidade Grau III (${imc.toStringAsPrecision(2)})";
      }
    }
  }

  reset() {
    heightCtrl = new MaskedTextController(mask: '000');
    weightCtrl = new MaskedTextController(mask: '000');
    result = "Preencha os dados para calcular seu IMC";
  }
}
