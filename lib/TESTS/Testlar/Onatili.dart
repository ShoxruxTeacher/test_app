import 'package:test_mobile/TESTS/variant.dart';

import '../tests.dart';

class OnaTili{
  static Test test=Test(name: "Ona tilim jon tilim",

      variants: [
    Variant("Tuyg‘u, cholg‘u, mangu, orzu, uyqu, ezgu.Quyidagilardan nechtasi yasama so‘z hisoblanadi",
        A: "1",
        B: "3",
        D: "5",
        C: "6",
        E: "68",
        answer: 'A'),
    Variant("Hokimoyim madrasasi qayerda joylashgan?",
        A: "Qo’qonda",
        B: "Buxoroda",
        D: "Termizda",
        C: "Xivada",
        E: "Navoiy",
        answer: 'C'),
        Variant("Hokimoyim madrasasi qayerda joylashgan?",
        B: "Buxoroda",
        D: "Termizda",
        C: "Xivada",
        E: "Navoiy",
        answer: 'C'),
        Variant("Jaloliddin Iroqda bo’lgan kezlarda qaysi davlatlar bn ittifoq tuzib,mo’g’illar qarshi kurash qilish imkoniyati paydo bo’ldi",
        A: "Tabariston,Damashq,Misr",
        B: "Eron,Misr,Dehli Sultonlig",
        D: "Jazira,Damashq,Misr",
        C: "Ko’niya,Jazira,damashq",
        answer: 'B'),

  ]);
}