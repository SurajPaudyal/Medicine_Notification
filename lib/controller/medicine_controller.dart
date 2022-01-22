import 'package:flutter_application/models/medicine.dart';
import 'package:get/get.dart';

class MedicineController extends GetxController {
  List<Medicine> medicineList = [];

  @override
  onInit() {
    fetchMedicine();
    super.onInit();
  }

  fetchMedicine() {
    fetchMedicineFromDatabase().then((value) {
      medicineList = value;
      update();
    });
  }
}
