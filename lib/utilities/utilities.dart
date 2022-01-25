import 'dart:convert';
import 'package:flutter/material.dart';

class Utilities {
  static Image imageFromBase64String(String base64String) {
    return Image.memory(
      base64Decode(base64String),
      fit: BoxFit.cover,
    );
  }
}

var allMedicineList_on_the_cart = [
  {
    "name": "Sinex",
    "composition": "pcm+chlor+phen",
    "picture": "assets/medicineimages/Sinex.jpg",
    "price": 30,
    "Company": "Time Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Cold"
  },
  {
    "name": "Sancho",
    "composition": "Menthol+camphor",
    "picture": "assets/medicineimages/Sancho.jpg",
    "price": 40,
    "Company": "Nepal Arurvedic ausadhalaya",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Nims",
    "composition": "nimesulide",
    "picture": "assets/medicineimages/Nims.jpg",
    "price": 42,
    "Company": "Asian Pharmaceuticals",
    "quantity": 1,
    "category": "Analgesics"
  },
  {
    "name": "De-Cold",
    "composition": "pcm+chlor+phen",
    "picture": "assets/medicineimages/Decold.jpg",
    "price": 30,
    "Company": "Lomus Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Cold"
  },
  {
    "name": "TusQDx",
    "composition": "brom+phen+",
    "picture": "assets/medicineimages/TusQD.png",
    "price": 141,
    "Company": "Blue Cross Laboratories ",
    "quantity": 1,
    "category": "Cough-and-Cold"
  },
  {
    "name": "Rhinex",
    "composition": "pcm+chlor+phen",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 30,
    "Company": "Simca Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Cold"
  },
  {
    "name": "AAHA Med Mask",
    "composition": "Melt-Blown+Triple Layer",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 150,
    "Company": "AAHA MED Company",
    "quantity": 1,
    "category": "Suppliments"
  },
  {
    "name": "Acenac 100",
    "composition": "aceclofenac",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 60,
    "Company": "National Pharmaceuticals",
    "quantity": 1,
    "category": " Analgesics"
  },
  {
    "name": "Aciloc 150",
    "composition": "ranitidine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 36,
    "Company": "Cadila Pharmaceuticals",
    "quantity": 1,
    "category": "Peptic-Ulcer-and-Gerd"
  },
  {
    "name": "Acular LS Eye",
    "composition": "ketorolac",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 141,
    "Company": "Allergan",
    "quantity": 1,
    "category": "Ophthalmic"
  },
  {
    "name": "Allegra 180",
    "composition": "fexofenadine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 348,
    "Company": "Sanofi Laboratories",
    "quantity": 1,
    "category": "Allergy/Rashes"
  },
  {
    "name": "Amlod 5mg",
    "composition": "amlodipine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 75,
    "Company": "NPL Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "Amlod LH",
    "composition": "amlodipine+losartan",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 98,
    "Company": "NPL Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "Amlozaar",
    "composition": "amlodipine+losartan",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 243,
    "Company": "Micro-Labs Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "Apet Syrup",
    "composition": "cypoheptadine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 125,
    "Company": "DJPL",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Apet Tab",
    "composition": "cypoheptadine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 40,
    "Company": "DJPL",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Arbitel 40",
    "composition": "telmisartan",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 119,
    "Company": "Micro-Labs Laboratories",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "Aristozyme Syrup",
    "composition": "enzyme",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 166,
    "Company": "Aristo Pharmaceuticals",
    "quantity": 1,
    "category": "Enzyme-Digestion"
  },
  {
    "name": "Arovit60K",
    "composition": "cholecalciferol",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 200,
    "Company": "Arrow Pharmaceuticals",
    "quantity": 1,
    "category": "Minerals-and-Vitamins"
  },
  {
    "name": "Arsil Expectorant",
    "composition": "brom+chlor",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 120,
    "Company": "Arya Pharmaceuticals",
    "quantity": 1,
    "category": "Cough-and-Cold"
  },
  {
    "name": "Arsil Dx",
    "composition": "brom+chlor",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 130,
    "Company": "Arya Pharmaceuticals",
    "quantity": 1,
    "category": "Cough-and-Cold"
  },
  {
    "name": "Arvast 10",
    "composition": "rosuvastatin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 300,
    "Company": "Intas Pharmaceuticals",
    "quantity": 1,
    "category": "Lipid-Lowering-Agents"
  },
  {
    "name": "Asomex 2.5",
    "composition": "S(-)amlodipine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 146,
    "Company": "Emcure Pharma",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "Astat 5",
    "composition": "atorvastatin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 67,
    "Company": "Quest Pharmaceuticals",
    "quantity": 1,
    "category": "Lipid-Lowering-Agents"
  },
  {
    "name": "Asthalin Inhaler",
    "composition": "salbutamol",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 213,
    "Company": "Cipla Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Asthmatic"
  },
  {
    "name": "Asthalin Rotacaps",
    "composition": "salbutamol",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 70,
    "Company": "Cipla Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Asthmatic"
  },
  {
    "name": "Atchol 10",
    "composition": "atorvastatin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 40,
    "Company": "Aristo Pharmaceuticals",
    "quantity": 1,
    "category": "Lipid-Lowering-Agents"
  },
  {
    "name": "Betadine Solution 100ml",
    "composition": "povidine iodine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 163,
    "Company": "Win-Medicare",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Betadine Solution 500ml",
    "composition": "povidine iodine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 300,
    "Company": "Win-Medicare",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Betadine Oint",
    "composition": "povidine iodine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 137,
    "Company": "Win-Medicare",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Bifilac",
    "composition": "pre&pro-biotic",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 192,
    "Company": "Tablets India Ltd",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Brica BM 100ml",
    "composition": "terbutaline+brom+chlor",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 130,
    "Company": "National Pharmaceuticals",
    "quantity": 1,
    "category": "Cough-and-Cold"
  },
  {
    "name": "Brica BM 60ml",
    "composition": "terbutaline+brom+chlor",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 90,
    "Company": "National Pharmaceuticals",
    "quantity": 1,
    "category": "Cough-and-Cold"
  },
  {
    "name": "Calvit CCM",
    "composition": "Minerals-and-Vitamins",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 100,
    "Company": "DJPL",
    "quantity": 1,
    "category": "Minerals-and-Vitamins"
  },
  {
    "name": "Camlo L",
    "composition": "amlodipine+losartan",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 120,
    "Company": "National Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "Candid-B Oint",
    "composition": "clotrimazole+beclomethasone",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 205,
    "Company": "Glenmark Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Fungal"
  },
  {
    "name": "Candid Oint",
    "composition": "clotrimazole",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 153,
    "Company": "Glenmark Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Fungal"
  },
  {
    "name": "Candid Ear Drops",
    "composition": "clotrimazole",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 128,
    "Company": "Glenmark Pharmaceuticals",
    "quantity": 1,
    "category": "Ear-Drop"
  },
  {
    "name": "Candid Powder",
    "composition": "clotrimazole",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 200,
    "Company": "Glenmark Pharmaceuticals",
    "quantity": 1,
    "category": "Allergy/Rashes"
  },
  {
    "name": "Candid Tv",
    "composition": "clotrimazole+selenium sulfide",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 432,
    "Company": "Glenmark Pharmaceuticals",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Cipro-Cent",
    "composition": "ciprofloxacin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 10,
    "Company": "Centaur Pharma",
    "quantity": 1,
    "category": "Ophthalmic"
  },
  {
    "name": "Cloben-G",
    "composition": "clotrimazole+gentamicin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 163,
    "Company": "Incodo Pharma",
    "quantity": 1,
    "category": "Anti-Fungal"
  },
  {
    "name": "CTZ Syrup",
    "composition": "cetrizine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 45,
    "Company": "NPL Pharmaceuticals",
    "quantity": 1,
    "category": "Allergy/Rashes"
  },
  {
    "name": "CTZ Tablet",
    "composition": "cetrizine",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 56,
    "Company": "NPL Pharmaceuticals",
    "quantity": 1,
    "category": "Allergy/Rashes"
  },
  {
    "name": "Dabur Nature Care",
    "composition": "trifala+isabgol",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 176,
    "Company": "Dabur India",
    "quantity": 1,
    "category": "Constipation"
  },
  {
    "name": "Decold Syrup",
    "composition": "pcm+phen+chlor",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 65,
    "Company": "Lomus Pharmaceuticals",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Digene Gel",
    "composition": "anesthetic+antacid",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 192,
    "Company": "Abbott India",
    "quantity": 1,
    "category": "Peptic-Ulcer-and-Gerd"
  },
  {
    "name": "Digene Tablet",
    "composition": "anesthetic+antacid",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 30,
    "Company": "Abbott India",
    "quantity": 1,
    "category": "Peptic-Ulcer-and-Gerd"
  },
  {
    "name": "DJ Citral",
    "composition": "alkalizer",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 95,
    "Company": "DJPL",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Econ",
    "composition": "levonorgestrel",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 80,
    "Company": "Nepal CRS Company",
    "quantity": 1,
    "category": "General-Medicine"
  },
  {
    "name": "Ecospirin 75",
    "composition": "aspirin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 8,
    "Company": "USV Laboratories",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "Ecospirin 150",
    "composition": "aspirin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 14,
    "Company": "USV Laboratories",
    "quantity": 1,
    "category": "Anti-Hypertensives"
  },
  {
    "name": "EVA 400",
    "composition": "vitamin e",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 65,
    "Company": "Quest Pharmaceuticals",
    "quantity": 1,
    "category": "Vitamin"
  },
  {
    "name": "Ezivac Enema",
    "composition": "glycerine+liquid parafin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 102,
    "Company": "GL",
    "quantity": 1,
    "category": "Constipation"
  },
  {
    "name": "Fixim 200",
    "composition": "cefixime",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 200,
    "Company": "National Pharmaceuticals",
    "quantity": 1,
    "category": "Antibiotic"
  },
  {
    "name": "Flexon Tablet",
    "composition": "pcm+ibuprofen",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 30,
    "Company": "Aristo Pharmaceuticals",
    "quantity": 1,
    "category": "Analgesics"
  },
  {
    "name": "Flexon Syrup",
    "composition": "pcm+ibuprofen",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 32,
    "Company": "Aristo Pharmaceuticals",
    "quantity": 1,
    "category": "Analgesics"
  },
  {
    "name": "Flomist Nasal Spray",
    "composition": "Fluticasone Propionate",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 511,
    "Company": "Cipla Pharmaceuticals",
    "quantity": 1,
    "category": "Nasal"
  },
  {
    "name": "Foracort 400 RC",
    "composition": "Formoterol+ Budesonide",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 345,
    "Company": "Cipla Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Asthmatic"
  },
  {
    "name": "Fortiplex-M Capsule",
    "composition": "multi-vitamin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 82,
    "Company": "DJPL",
    "quantity": 1,
    "category": "Minerals-and-Vitamins"
  },
  {
    "name": "Fortiplex Syrup 200ml",
    "composition": "vitamin b complex",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 125,
    "Company": "DJPL",
    "quantity": 1,
    "category": "Minerals-and-Vitamins"
  },
  {
    "name": "Glycomet-850",
    "composition": "metformin",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 53,
    "Company": "USV Laboratories",
    "quantity": 1,
    "category": "Anti-Diabetics"
  },
  {
    "name": "Grilintus-BM 100ml",
    "composition": "terbutaline+brom+chlor",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 155,
    "Company": "Laboratoires Griffon",
    "quantity": 1,
    "category": "Cough-and-Cold"
  },
  {
    "name": "Gropan",
    "composition": "pantoprazole",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 80,
    "Company": "Gracure Pharmaceuticals",
    "quantity": 1,
    "category": "Peptic-Ulcer-and-Gerd"
  },
  {
    "name": "Hybro",
    "composition": "hyoscine butylbromide",
    "picture": "assets/medicineimages/Rhinex.jpg",
    "price": 105,
    "Company": "National Pharmaceuticals",
    "quantity": 1,
    "category": "Anti-Spasmodic"
  },
//  {
//    "name": "",
//    "composition": "",
//    "picture": "assets/medicineimages/.jpg",
//    "price": ,
//    "Company": "",
//    "quantity": 1,
//    "category": ""
//  },
];

var medicine_indications = [
  {
    "composition": "Aceclefenac",
    "indication":
        "Aceclofenac film-coated tablets are indicated for the relief of pain and inflammation in osteoarthritis, rheumatoid arthritis and ankylosing spondylitis. Aceclofenac film-coated tablets are supplied for oral administration and should be swallowed whole with a sufficient quantity of liquid.",
    "adult_dose":
        "The recommended dose is 200 mg daily, taken as two separate 100 mg doses, one tablet in the morning and one in the evening.",
    "child_dose": "Not Available",
    "pregnancy_category":
        "Pregnancy Category-C\nStudies in animals have revealed adverse effects on the fetus and there are no controlled studies in women, or studies in women and animals are not available. Drugs from this class can be given to pregnant women if the benefit to the mother outweighs the risk to the fetus.",
    "side_effect": "N/A",
  },
  {
    "composition": "Acarbose",
    "indication":
        "Acarbose is used to treat type 2 diabetes. Normally, your pancreas releases insulin into the blood stream after you eat. Insulin is used by all the cells in your body to help turn the food you eat into energy. This is done by using glucose (sugar) in the blood as quick energy. When you have type 2 diabetes, insulin is still produced by your pancreas, but the amount of insulin produced may not be enough or your body may not be using it properly and you may still need more. Because of this, the insulin is not able to lower your blood sugar properly and you will have too much sugar in your blood. Acarbose lowers your blood sugar by preventing the breakdown of starch into sugar. It may be used alone or in combination with another type of oral diabetes medicine called a sulfonylurea.",
    "adult_dose":
        "Initially 25 mg PO q8hr, at meals (with first bite).\nCan increase to 50 or 100 mg PO q8hr at 4- to 8-wk intervals based on 1 hour postprandial glucose or glycosylated hemoglobin levels, and on tolerance.\n<60 kg: 50 mg q8hr\n>60 kg: 100 mg q8hr",
    "child_dose": "Not Available",
    "pregnancy_category":
        "Pregnancy Category-B\nEither animal‐reproduction studies have not demonstrated a fetal risk but there are no controlled studies in pregnant women, or animal studies have demonstrated risk to the fetus that was not confirmed in controlled studies in pregnant women in the first trimester and there is no evidence of a risk in later trimesters. Medications in this class are generally considered safe.",
    "side_effect": "Nausea, Vomiting",
  },
  {
    "composition": "Acetazolamide",
    "indication":
        "Acetazolamide is a diuretic and carbonic anhydrase inhibitor medication that is used to treat several illnesses. FDA-approved indications include glaucoma, idiopathic intracranial hypertension, congestive heart failure, altitude sickness, periodic paralysis, and epilepsy.",
    "adult_dose":
        "Closed-angle (acute congestive) glaucoma\n-500 mg PO/IV, followed by 125-250 mg PO q4hr\n-Sustained-release: 500 mg PO q12hr\n\nOpen-angle (chronic simple) glaucoma\n-250 mg-1 g PO/IV qDay or divided q6-12hr\n-Sustained-release: 500 mg PO q12hr\n\nSecondary glaucoma\n-500 mg PO/IV, followed by 125-250 mg PO q4hr\n-Sustained-release: 500 mg PO q12hr\n\nAcute Altitude Sickness\n-Immediate release: 500-1000 mg/day PO divided q8-12hr\n-Extended release: 500-1000 mg PO q12-24hr\n-Start 24-48 hours before ascent and continue for 48 hours at high altitude or longer, 	to control symptoms if necessary",
    "child_dose": "<12 years: Safety and efficacy is not established",
    "pregnancy_category":
        "Pregnancy Category - C\nStudies in animals have revealed adverse effects on the fetus and there are no controlled studiesin women, or studies in women and animals are not available. Drugs from this class can be given to pregnantwomen if the benefit to the mother outweighs the risk to the fetus.",
    "side_effect": "Not Availabe",
  },
  {
    "composition": "Acetylcysteine",
    "indication":
        "Tubercolosis, Chronic emphysema, Paracetamol Poisioning, Bronchiectasis, Pneumonia, Atelectasis, Cystic Fibrosis, Tracheostomy care, during anaesthsia ",
    "adult_dose":
        "Nebulized into a face mask, mouth piece, or tracheostomy. The recommended dosage for most people is 3–5 mL of the 20% solution, or 6–10 mL of the 10% solution, three to four times per day. However, doses can range from 1–10 mL of the 20% solution or 2–20 mL of the 10% solution. These doses may be given every two to six hours.\nNebulized into a tent. You will need to use enough acetylcysteine (10% or 20%) to maintain a heavy mist in the tent for the length of time your doctor prescribes. You may use as much as 300 mL of acetylcysteine during a single treatment.",
    "child_dose": "Not Available",
    "pregnancy_category":
        "Pregnancy Category - B\nEither animal‐reproduction studies have not demonstrated a fetal risk but there are no controlled studies in pregnant women, or animal studies have demonstrated risk to the fetus that was not confirmed in controlled studies in pregnant women in the first trimester and there is no evidence of a risk in later trimesters. Medications in this class are generally considered safe.",
    "side_effect": "Not Available",
  },
  {
    "composition": "Acyclovir",
    "indication":
        "herpes viruses, such as genital herpes, cold sores, shingles, and chickenpox.",
    "adult_dose":
        "Primary herpes simplex infections:\n	-200 mg 5 times daily every 4 hr for 5-10 days\n\nSuppression of recurrent herpes simples\n-800mg daily in 2-4 divided doses. may reduce to 400-600mg daily if necessry\n\nProphylais of herpes simplex in immunocompromised patients\n-200-400mg 4 times daily\nVaricella zoster 800mg 5 times/day for 5-7 days\nHerpes zoster 800mg 5 times/day for 7-10 days",
    "child_dose": "900mg/day q8 \n60-80mg/kg/day (max 4gm/day) q6-8h",
    "pregnancy_category":
        "Pregnancy Category - B\nEither animal‐reproduction studies have not demonstrated a fetal risk but there are no controlled studies in pregnant women, or animal studies have demonstrated risk to the fetus that was not confirmed in controlled studies in pregnant women in the first trimester and there is no evidence of a risk in later trimesters. Medications in this class are generally considered safe.",
    "side_effect": "Not Available",
  },
  {
    "composition": "Adapalene Topical gel",
    "indication": "It is used to treat pimples (acne)",
    "adult_dose":
        "Mild to moderate cases where comedones, papules and pustules predominate: As 0.1% cream/gel/lotion, or 0.3% gel: Apply thinly onto affected areas once daily at night. If necessary, may reduce the frequency of application. Before application, gently cleanse the affected skin and pat dry. Reassess treatment if there is no improvement after 3 months.",
    "child_dose":
        "≥12 years As 0.1% cream/gel/lotion, or 0.3% gel: Same as adult dose.",
    "pregnancy_category":
        "Pregnancy Category - C \n  Studies in animals have revealed adverse effects on the fetus and there are no controlled studies in women, or studies in women and animals are not available. Drugs from this class can be given to pregnant women if the benefit to the mother outweighs the risk to the fetus.",
    "side_effect": "Not Available",
  },
  {
    "composition": "Albendazole",
    "indication": "treat infections caused by worms",
    "adult_dose":
        "Whipworm, threadworm, hookworm,ascariasis\n 400mg single dose",
    "child_dose":
        "2-18 years 400mg Single Dose \n Below 2 years consult the Pharmacist",
    "pregnancy_category":
        "Pregnancy Category - C\nStudies in animals have revealed adverse effects on the fetus and there are no controlled studies in women, or studies in women and animals are not available. Drugs from this class can be given to pregnant women if the benefit to the mother outweighs the risk to the fetus.",
    "side_effect": "Not Available",
  },
  {
    "composition": "Alfuzosin",
    "indication":
        "Alfuzosin is used in men to treat symptoms of an enlarged prostate (benign prostatic hyperplasia or BPH), which include difficulty urinating (hesitation, dribbling, weak stream, and incomplete bladder emptying), painful urination, and urinary frequency and urgency.",
    "adult_dose":
        "The recommended dosage is one 10 mg alfuzosin HCl extended-release tablet once daily. The extent of absorption of alfuzosin is 50% lower under fasting conditions. Therefore, alfuzosinshould be taken with food and with the same meal each day. The tablets should not be chewed or crushed.",
    "child_dose": "Keep ALFUZOSIN out of reach of children.",
    "pregnancy_category":
        "Pregnancy Category - B\nEither animal‐reproduction studies have not demonstrated a fetal risk but there are no controlled studies in pregnant women, or animal studies have demonstrated risk to the fetus that was not confirmed in controlled studies in pregnant women in the first trimester and there is no evidence of a risk in later trimesters. Medications in this class are generally considered safe.",
    "side_effect": "Not Available",
  },
  {
    "composition": "Allopurinol",
    "indication":
        "Allopurinol is indicated for reducing urate/uric acid formation in conditions where urate/uric acid deposition has already occurred (e.g. gouty arthritis, skin tophi, nephrolithiasis) or is a predictable clinical risk (e.g. treatment of malignancy potentially leading to acute uric acid nephropathy).",
    "adult_dose":
        "Initial dose: 100 mg orally once a day\n -Increase in increments of 100 mg weekly until a serum uric level of 6 mg/dL or less is attained \n Mild Gout:\n-Average maintenance dose: 200 to 300 mg orally once a day\nModerately Severe Tophaceous Gout:\n-Average maintenance dose: 400 to 600 mg orally/day in divided doses\nMinimal Effective Dose: 100 to 200 mg per day\nMaximum Dose: 800 mg per day",
    "child_dose":
        "10 mg/kg per day orally divided every 12 hours, not to exceed 600 mg/day",
    "pregnancy_category":
        "Pregnancy Category - C\nAllopurinol is categorised pregnancy risk “C” by the FDA as it inhibits purine synthesis and hence may have direct affects on dividing cells in utero.\nStudies in animals have revealed adverse effects on the fetus and there are no controlled studies in women, or studies in women and animals are not available. Drugs from this class can be given to pregnant women if the benefit to the mother outweighs the risk to the fetus.",
    "side_effect": "Not Available",
  },
  {
    "composition": "Alprazolam",
    "indication":
        "Alprazolam is indicated for the acute treatment of generalized anxiety disorder in adults. Alprazolam is also indicated, either as a standard or extended-release formulation, for the treatment of panic disorder with or without agoraphobia in adults.",
    "adult_dose":
        "Take this medicine only as directed by your doctor.\nAt first, 0.25 to 0.5 milligram (mg) 3 times a day. Your doctor may increase your dose as needed. However, the dose is usually not more than 4 mg per day.",
    "child_dose": "Use and dose must be determined by your doctor.",
    "pregnancy_category":
        "Pregnancy Category - D\nDo not take if you’re pregnant or planning to become pregnant, the drug may actually cause concerns.\n  Evidence of human fetal risk has been documented, but the benefits to the mother may be acceptable despite the risk to the fetus. Drugs in this class may be used in pregnancy if the benefits to the mother outweigh the risk to the fetus (i.e. a life threatening situation or a serious disease for which safer medication cannot be used or are not efficacious). ",
    "side_effect": "Not Available",
  },
  {
    "composition": "Nimesulide",
    "indication":
        "Nimesulide is non-steroidal anti-inflammatory drug (NSAID) with analgesic and antipyretic properties. Its approved indications are the treatment of acute pain, the symptomatic treatment of osteoarthritis and primary dysmenorrhea in adolescents and adults above 12 years old.",
    "adult_dose": "The usual dose is 100mg twice a day.",
    "child_dose":
        "12 years and older: 5mg/kg of body weight in 2 or 3 divided doses.",
    "pregnancy_category":
        "Nimesulide is not recommended for use in pregnancy especially during 1st trimester, as it has been reported to cause birth defects in the newborn baby. Consult your doctor before using this medicine.",
    "side_effect":
        "Nimesulide is generally well tolerated, but side effects can include headache, dizziness, somnolence, gastrointestinal upset, nausea, abdominal discomfort, diarrhea, peripheral edema and hypersensitivity reactions.",
  },
  {
    "composition": "Paracetamol + Codeine Phosphate",
    "indication":
        "Paracetamol + codeine is an analgesic (pain relief medicine) used to treat different types of pain, including headache and migraine. It's described as a combination analgesic because it contains 2 ingredients, paracetamol and codeine, that work to relieve pain by different actions.",
    "adult_dose":
        "2 tablets orally or \n 1 tablet 3-4 times at an interval of 4-6 hours a day until pain relief. The maximum dose is 8 co-codamol tablets in 24 hours.",
    "child_dose":
        "Children aged 12 to 15 years can have co-codamol but only if everyday painkillers, such as ibuprofen or paracetamol on its own, have not worked. \n Do not give co-codamol to children under 12 years old.",
    "pregnancy_category":
        "Pregnancy Category – A \n Both paracetamol and codeine have been taken by many pregnant women and women of childbearing age without any proven increase in the frequency of malformations or other direct or indirect harmful effects on the fetus having been observed.",
    "side_effect":
        "These common side effects happen in more than 1 in 100 people: Constipation, nausea or vomiting, feeling sleepy, headaches.  \n Serious side effects are rare and happen in less than 1 in 100 people: skin rash, difficulty peeing, changes in your eyesight, dizziness.",
  },
  {
    "composition": "Paracetamol + Phenylephrine + Chlorpheniramine",
    "indication":
        "This combination medication is used to temporarily treat symptoms caused by the common cold, flu, allergies, or other breathing illnesses (such as sinusitis, bronchitis). Decongestants help relieve stuffy nose, sinus, and ear congestion symptoms. Acetaminophen (APAP) is a non-aspirin pain reliever and fever reducer.",
    "adult_dose": "1 tablet three times a day for 3-5 days. ",
    "child_dose":
        "12 years and older and 35kg+: Adult Dose. \n 8-12 years: ½ tablet three times a day. \n 4-8 years: 150+5+1 MG/5ml - 5ml three times a day  \n Do not give this medication to a child younger than 4 years old.",
    "pregnancy_category":
        "Pregnancy Category – C \n Recommended to be taken during pregnancy only under doctor's recommendation.",
    "side_effect":
        "dizziness, drowsiness, mild headache, blurred vision, dry mouth, nose, or throat, constipation, feeling nervous, sleep problems (insomnia), ",
  },
  {
    "composition": "Paracetamol 325mg + Tramadol 37.5mg",
    "indication":
        "Tramadol Hydrochloride/Paracetamol tablets are indicated for the symptomatic treatment of moderate to severe pain. The use of Tramadol Hydrochloride/Paracetamol should be restricted to patients whose moderate to severe pain is considered to require a combination of tramadol and paracetamol.",
    "adult_dose":
        "Usual dose: 1-2 tablets orally every 4 to 6 hours as needed for pain. \n Maximum dose: 8 tablets per day Maximum duration: 5 days ",
    "child_dose":
        "It is not known if Paracetamol + Tramadol is safe and effective in children younger than 16 years of age.",
    "pregnancy_category":
        "Tramadol is a category C drug, while acetaminophen is a category B drug throughout each trimester of pregnancy. The FDA created categories based on presently available research to indicate the possible safety or risks of taking drugs while pregnant.",
    "side_effect":
        "Paracetamol + Tramadol may cause serious side effects including: \n noisy breathing, sighing, shallow breathing, breathing that stops during sleep, slow heart rate, weak pulse, lightheadedness, convulsions (seizure), chest pain, upper stomach pain, loss of appetite, dark urine, yellowing of the skin or eyes (jaundice), nausea, vomiting, dizziness, worsening tiredness or weakness, agitation, hallucinations, fever, sweating, fast heart rate, muscle stiffness, twitching, loss of coordination, and diarrhea",
  },
  {
    "composition": "Ambroxol",
    "indication":
        "All forms of tracheobronchitis, emphysema with bronchitis pneumoconiosis, chronic inflammatory pulmonary conditions, bronchiectasis, bronchitis with bronchospasm asthma. During acute exacerbations of bronchitis, it should be given with the appropriate antibiotic.",
    "adult_dose":
        "Daily dose of 30 mg (one Ambroxol tablet) to 120 mg (4 Ambroxol tablets) taken in 2 to 3 divided doses",
    "child_dose":
        "Children up to 2 years: half a teaspoonful Ambroxol syrup twice daily \n Children 2 - 5 years: half a teaspoonful Ambroxol syrup 3 times daily \n Children over 5 years: One teaspoonful Ambroxol syrup 2-3 times daily.",
    "pregnancy_category":
        "Pregnancy Category – C \n It is advisable to avoid use during the first trimester of pregnancy. \n Studies in animals have revealed adverse effects on the fetus and there are no controlled studies in women, or studies in women and animals are not available. Drugs from this class can be given to pregnant women if the benefit to the mother outweighs the risk to the fetus",
    "side_effect":
        "Nausea. Vomiting. Diarrhoea. Itching. Skin rash. Runny nose. Gastrointestinal side effects. Abdominal pain.",
  },
  {
    "composition": "Amitriptyline Hydrochloride",
    "indication":
        "Amitriptyline is a tricyclic antidepressant with sedative effects. Amitriptyline affects certain chemical messengers (neurotransmitters) that communicate between brain cells and help regulate mood. Amitriptyline is a prescription medicine used to treat symptoms of depression.",
    "adult_dose":
        "Usual Adult Dose for Depression: \n OUTPATIENTS: \n -Initial dose: 75 mg orally per day in divided doses; this may be increased to 150 mg/day (if needed) \n -Maintenance dose: 40 to 100 mg orally per day \n-Maximum dose: 150 mg/day  \nINPATIENTS: \n-Initial dose: 100 mg orally per day  \n-Maintenance dose: 40 to 100 mg orally as a single dose at bedtime  \n -Maximum dose: 300 mg/day",
    "child_dose":
        "Remember, keep this and all other medicines out of the reach of children",
    "pregnancy_category":
        "Pregnancy Category – C \n Amitriptyline is excreted into human milk so a decision should be made to discontinue breastfeeding or discontinue the drug, considering the importance of the drug to the mother. \n  Amitriptyline should be used during pregnancy only if the benefit outweighs the risk to the fetus.",
    "side_effect":
        "constipation. dizziness. dry mouth. feeling sleepy. difficulty peeing. headache.",
  },
  {
    "composition": "Amlodipine 5mg + Losartan Potassium 50mg",
    "indication":
        "This combination medication contains calcium channel blocker and angiotensin II receptor antagonist, prescribed for mild to moderate hypertension.",
    "adult_dose": "1 tablet 2 times a day or as prescribed by physician.",
    "child_dose": "½ tablet or 1 tablet after 10 years old.",
    "pregnancy_category":
        "Amlodipine is category C and Losartan Potassium is category D.",
    "side_effect":
        "swelling of your legs or ankles. tiredness or extreme sleepiness. stomach pain. Dizziness or lightheadedness",
  },
  {
    "composition": "Amlodipine 5mg + Telmisartan 40mg",
    "indication":
        "Telmisartan/amlodipine tablets are indicated for the treatment of hypertension, alone or with other antihypertensive agents to lower blood pressure. Lowering blood pressure reduces the risk of fatal and nonfatal cardiovascular events, primarily strokes and myocardial infarctions.",
    "adult_dose":
        "Start with 1 tablet and can be increase to 1 tablet 2 times a day not to exceed 80 mg/10 mg qDay. \n Dosage range: Telmisartan 20-80 mg/amlodipine 2.5-10 mg PO qDay.",
    "child_dose":
        "Ages 10 years and older: Amlodipine 2.5mg/Telmisartan 20mg 1-2 times a day.",
    "pregnancy_category":
        "Drowsiness, visible water retention, headache, nausea, intense abdominal pain, a common cold, inflammation of the tissue lining the sinuses, backache.",
    "side_effect":
        "Can cause fetal harm when administered to a pregnant woman; discontinue drug when pregnancy is detected and treat hypertension according to guidelines during pregnancy. \n There is no information regarding the presence of telmisartan in human milk, the effects on the breastfed infant, or the effects on milk production.",
  },
  {
    "composition": "Amlodipine",
    "indication":
        "Hypertension. Indicated for hypertension, to lower blood pressure. ... \n Angina & Coronary Artery Disease. Treatment of chronic stable angina, vasospastic angina (Prinzmetal or variant angina), and angiographically documented CAD in patients without heart failure or EF <40% ... \n Dosage Modifications. Renal impairment.",
    "adult_dose":
        "Maintenance dose: 5 to 10 mg orally once a day \n Maximum dose: 20 mg/day",
    "child_dose": "Not Available",
    "pregnancy_category":
        "Pregnancy Category – C \n Studies in animals have revealed adverse effects on the fetus and there are no controlled studies in women, or studies in women and animals are not available. Drugs from this class can be given to pregnant women if the benefit to the mother outweighs the risk to the fetus.",
    "side_effect":
        "swelling of the hands, feet, ankles, or lower legs. headache. upset stomach. nausea. stomach pain.  dizziness or lightheadedness. drowsiness. excessive tiredness.",
  },
  {
    "composition": "Amoxicillin 500mg + Clavulanic Acid 125mg",
    "indication":
        "The combination of amoxicillin and clavulanic acid is used to treat certain infections caused by bacteria, including infections of the ears, lungs, sinus, skin, and urinary tract. Amoxicillin is in a class of medications called penicillin-like antibiotics. It works by stopping the growth of bacteria. Clavulanic acid is in a class of medications called beta-lactamase inhibitors. It works by preventing bacteria from destroying amoxicillin. ",
    "adult_dose":
        "1 tablet 3 times a day for 5-7 days or as prescribed by doctor.",
    "child_dose":
        "10 years and older: Amoxicillin 250mg + Clavulanic Acid 125mg- 3 times a day for 5-7 days. \n 5-10 years:  Amoxicillin 125mg + Clavulanic Acid 75mg: 3 times a day for 5-7 days or as prescribed by doctor.",
    "pregnancy_category":
        "Pregnancy Category – B \n Amoxicillin-clavulanate has been assigned to pregnancy category B by the FDA. Animal studies failed to reveal any evidence of teratogenicity. There are no controlled data in human pregnancies.",
    "side_effect":
        "Diarrhea, upset stomach, vomiting, mild skin rash severe skin rash, itching, hives, difficulty breathing or swallowing, wheezing, vaginal itching and discharge, yellowing of the skin or eyes",
  },
  {
    "composition": "Amoxicillin",
    "indication":
        "Amoxicillin alone is indicated to treat susceptible bacterial infections of the ear, nose, throat, genitourinary tract, skin, skin structure, and lower respiratory tract.",
    "adult_dose":
        "Adults, teenagers, and children weighing 40 kilograms (kg) or more—250 to 500 milligrams (mg) every 8 hours, or 500 to 875 mg every 12 hours.",
    "child_dose": "250mg three times for 5-7 days.",
    "pregnancy_category":
        "Pregnancy Category – B \n Either animal‐reproduction studies have not demonstrated a fetal risk but there are no controlled studies in pregnant women, or animal studies have demonstrated risk to the fetus that was not confirmed in controlled studies in pregnant women in the first trimester and there is no evidence of a risk in later trimesters. Medications in this class are generally considered safe.",
    "side_effect":
        "Abdominal or stomach cramps or tenderness. back, leg, or stomach pains. black, tarry stools. blistering, peeling, or loosening of the skin. bloating. blood in the urine. bloody nose. chest pain.",
  },
  {
    "composition": "Antacid",
    "indication":
        "An antacid is a substance which neutralizes stomach acidity and is used to relieve heartburn, indigestion, or an upset stomach. Some antacids have been used in the treatment of constipation and diarrhea. Marketed antacids contain salts of aluminum, calcium, magnesium, or sodium.",
    "adult_dose":
        "Initially, 2-3 tab orally once 3-4 times a day or 15ml-25ml orally once 3-4 times a day. \n Maintenance dose: 2 tab 3 times a day or 15ml 3 times a day.",
    "child_dose":
        "Up to 6 years: 1 tab or 5ml 3 times a day. \n 6-12 years: 2 tab or 10ml 3 times a day.",
    "pregnancy_category":
        "Are Antacid tablets safe for pregnant women? Yes, it is safe to be consumed by pregnant women. It is an antacid which may be prescribed to provide relief from heartburn as it is one of the most common problem experiences by a pregnant woman.",
    "side_effect":
        "diarrhea or constipation, flatulence (wind), stomach cramps feeling sick or vomiting.",
  },
  {
    "composition": "Aripiprazole",
    "indication":
        "Aripiprazole is an antipsychotic medicine that is used to treat schizophrenia in adults and children at least 13 years old. Aripiprazole is also used in children 6 years or older who have Tourette's disorder, or symptoms of autistic disorder (irritability, aggression, mood swings, temper tantrums, and self-injury).",
    "adult_dose":
        "Aripiprazole Immediate-Release (IR): \n -Initial dose: 10 or 15 mg orally once a day \n -Target dose: 10 to 15 mg per day; effective dose range 10 to 30 mg per day; however, clinical trials have not found doses exceeding 10 or 15 mg per day to be more effective. \n -Maximum dose: 30 mg/day",
    "child_dose":
        "Some of the common side effects of Aripiprazole are: \n Headache Nervousness Dizziness Heartburn Constipation Diarrhea Stomach pain Weight gain Changes in appetite \n	Some of the serious side effects of Aripiprazole are: \n Rashes Hives Itching Swelling of eyes Difficulty in breathing Seizures Tightening of neck muscles ",
    "pregnancy_category": "Pregnancy Category - C",
    "side_effect":
        "headache.nervousness. restlessness. dizziness, feeling unsteady, or having trouble keeping your balance. heartburn. constipation. diarrhea. stomach pain.",
  },
  {
    "composition": "Aspirin",
    "indication":
        "Aspirin is a salicylate (sa-LIS-il-ate). It works by reducing substances in the body that cause pain, fever, and inflammation. Aspirin is used to treat pain, and reduce fever or inflammation. It is sometimes used to treat or prevent heart attacks, strokes, and chest pain (angina). Aspirin should be used for cardiovascular conditions only under the supervision of a doctor.",
    "adult_dose":
        "Oral \n Acute Symptoms \n \150-300 mg PO; (within minutes of symptoms) \n Prophylaxis of myocardial infarction \n Adult: 75-300 mg once daily. Lower dosed should be used in patients receiving ACE inhibitors. \n \n Stent implantation \n Adult; 300mg 2 hrs before procedure followed by 150-300mg/day thereafter \n Mild to moderate pain and fever: \n Adult: 150-300 repeated every 4-6 hrs according to response. Max 4 gm/day \n Pain and inflammation associated with musculosketal and joint disorders \n Adult: initial 2.4-3.6 gm/day in divided doses. Usual maintainance 3.6-5.4 gm/day. Monitor serum concentrations.",
    "child_dose":
        "Juvenile rheumatoid arthritis \n Child: 80-100 mg/kg daily in 5-6 divided dosed. Up to 130 mg/kg in acute exacerbations if necessary.",
    "pregnancy_category":
        "Pregnancy Category – D \n However, aspirin is considered to be in pregnancy category D by the FDA if full dose aspirin is taken in the third trimester. Use of nonsteroidal anti-inflammatory drugs during the third trimester of pregnancy should be avoided due to effects on the fetal cardiovascular system (closure of the ductus arteriosus).",
    "side_effect":
        "Aspirin may cause side effects. The NIH lists the following as less serious, though a doctor should be consulted if they persist: \n Nausea, vomiting, stomach pain, heartburn, \n \n The following are serious side effects, and, if experienced, a doctor should be consulted immediately: \n Hives, Rash, swelling of the eyes, face, lips, tongue, or throat, wheezing or difficulty breathing, hoarseness, fast heartbeat, fast breathing, cold, clammy skin, ringing in the ears, loss of hearing, bloody vomit, vomit that looks like coffee grounds, bright red blood in stools, black or tarry stools.",
  },
  {
    "composition": "Atenolol",
    "indication": "Hypertension",
    "adult_dose":
        "Hypertension \n  25-50 mg/day PO initially; may be increased to 100 mg/day PO \n  Angina Pectoris \n 50 mg/day PO; after 1 week, may be increased to 100 mg/day PO; some patients may require 200 mg/day \n Alcohol Withdrawal Syndrome (Off-label) \n 50-100 mg/day PO",
    "child_dose": "Keep out of reach of children.",
    "pregnancy_category":
        "Pregnancy Category - D \n The FDA classifies atenolol as a Pregnancy Category D medication which means that it can cause harm on the unborn child when used during pregnancy. Therefore, Atenolol should be used in pregnancy only if there are no alternatives and the perceived benefits outweigh the potential risks.",
    "side_effect":
        "Heart- Slow heart rate, heart failure, low blood pressure. \n Central Nervous System- Headache, fatigue, dizziness, hallucinations, confusion and sleep disturbances. \n Gastrointestinal - Diarrhea and nausea. \n Respiratory - Wheezing and shortness of breath. \n Others: Lack of sexual drive, impotence, and erectile dysfunction.",
  },
  {
    "composition": "Atorvastatin",
    "indication":
        "Treatment of several types of dyslipidemias, including primary hyperlipidemia and mixed dyslipidemia in adults, hypertriglyceridemia, primary dysbetalipoproteinemia, homozygous familial hypercholesterolemia, and heterozygous familial hypercholesterolemia in adolescent patients with failed dietary modifications. \n Also call your doctor at once if you have: \n 1.muscle weakness in your hips, shoulders, neck, and back \n 2.trouble lifting your arms, trouble climbing or standing; \n 3.liver problems - upper stomach pain, weakness, tired feeling, loss of appetite, dark urine, jaundice (yellowing of the skin or eyes); or \n 4.kidney problems - little or no urinating, swelling in your feet or ankles, feeling tired or short of breath.",
    "adult_dose":
        "Initial dose: 10 mg or 20 mg orally once a day \n -An initial dose of 40 mg may be used in patients who require a larger reduction in low density lipoprotein (e.g. more than 45%) \n -Individualize dose based on goals of therapy and response \n Maintenance dose: 10 mg to 80 mg orally once a day \n Maximum dose: 80 mg/day",
    "child_dose":
        "Children 10 to 17 years of age—At first, 10 mg once a day. Your doctor may increase your dose as needed. However, the dose is usually not more than 20 mg per day. \n Children younger than 10 years of age)—Use and dose must be determined by your doctor.",
    "pregnancy_category":
        "Pregnancy Category - X \n The U.S. Food and Drug Administration (FDA) says that statins are not recommended for pregnant women. They are rated as “Pregnancy Category X” drugs, which signifies that studies have shown they may cause birth defects and that the risks clearly outweigh any benefit",
    "side_effect":
        "Common atorvastatin side effects may include: \n joint pain; \n stuffy nose, sore throat; \n diarrhea; or \n pain in your arms or legs.",
  },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
  // {
  //   "composition": "",
  //   "indication": "",
  //   "adult_dose": "",
  //   "child_dose": "",
  //   "pregnancy_category": "",
  //   "side_effect": "",
  // },
];
//  {
//    "composition": "",
//    "indication": "",
//    "adult_dose": "",
//    "child_dose": "",
//    "pregnancy_category": "",
//    "side_effect": "",
//  },

var bloodgroup_database = [
  {
    "name": "Suraj Poudyal",
    "address": "Sukedhara, Kathmandu",
    "phone_number": "9843157154",
    "blood_group": "B+",
  },
  {
    "name": "Ashim Pandey",
    "address": "Kapan, Kathmandu",
    "phone_number": "9851078462",
    "blood_group": "A+",
  },
  {
    "name": "Diwash Nepal",
    "address": "Chabahil, Kathmandu",
    "phone_number": "9861574235",
    "blood_group": "o+",
  },
  {
    "name": "Dipen Basnet",
    "address": "Dhumbarahi, Kathmandu",
    "phone_number": "9816487520",
    "blood_group": "AB+",
  },
//    {
//    "name": "",
//    "address": "",
//    "phone_number": "",
//    "blood_group": "",
//  },
];

var emergengy_hospitals = [
  {
    "name": "Bhaktapur Hospital",
    "address": "Doodh Pati",
    "phone_number": "01-6610676",
  },
  {
    "name": "Bir Hospital",
    "address": "Tundikhel",
    "phone_number": "01-4221119, 01-4223807",
  },
  {
    "name": "TU Teaching Hospital",
    "address": "Maharanjgunj",
    "phone_number": "01-4412707, 01-4412808, 01-4412505",
  },
  {
    "name": "Til Ganga Eye Hospital",
    "address": "Til Ganga",
    "phone_number": "01-4476575, 01-4474937",
  },
  //{  "name": "", "address": "", "phone_number": "",},
];

var emergency_ambulance = [
  {
    "name": "24x7 Ambulance Service",
    "location": "Basundhara, Kathmandu",
    "phone_number": "9840186344",
  },
  {
    "name": "Akhil Nepal Chiya Majdur Sangh",
    "location": "Jhapa",
    "phone_number": "9814952000",
  },
  {
    "name": "Alka Hospital Ambulance",
    "location": "Jawalakhel, Lalitpur",
    "phone_number": "01-5555555",
  },
  {
    "name": "Ambulance Service Siddhartha Club",
    "location": "Siddhartha Chowk, Pokhara",
    "phone_number": "06-1530200, 06-1521433",
  },
//  {   "name": "",    "location": "",    "phone_number": "",  },
];

var emergency_blood_bank = [
  {
    "name": "Redcross Blood Bank",
    "location": "Balkumari, Lalitpur",
    "phone_number": "01-5186065 / 01-5186390",
  },
  {
    "name": "Bhaktapur Blood Bank",
    "location": "Bhaktapur",
    "phone_number": "01-6612266 / 016611661",
  },
  {
    "name": "Noble Hospital Blood Bank",
    "location": "Sinamangal Kathmandu",
    "phone_number": "01-4110842",
  },
  {
    "name": "Ganga Lal Hospital Blood Bank",
    "location": "Bansbari, Kathmandu",
    "phone_number": "01-4371374",
  },
  {
    "name": "Paropakar Maternity & Women’s Hospital",
    "location": "Thapathali, Kathmandu",
    "phone_number": "01-4260405",
  },
//  {    "name": "",    "location": "",    "phone_number": "",  },
];
