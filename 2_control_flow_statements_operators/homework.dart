import 'dart:io';

///  # Homework
///  SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız.
///  Q1 : Write a program that creates 3 double variables and prints their average.
///
///  SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
///  Q2 : Write a program that prints the type of the triangle whose sides you enter.
///
///  SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
///  (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)
///
///  Q3 : Write a program that takes the midterm and final grades and finds out if the student has passed the course
///  (passing grade = 50, midterm grade is 40% and final grade is 60%)
///
///  SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
///  Q4: Write an application that prints your name 5 times on the screen with all loop statements.
///
///  SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız.
///  Q5: Print the squares of the numbers divisible by 15 from 1 to 100 on the screen.
///
///  SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
///  Q6: Write an application that finds the factorial of a defined integer.
///
///  SORU 7 : İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın
///  Q7 : Write an algorithm that calculates the average of a student who enters two grades and displays the result on the screen.
///
///  SORU 9 : Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın.
///  Q9 : Write an algorithm that calculates the final price by adding 18% VAT to the product whose price is entered.
///

main(List<String> args) {
//CEVAP - ANSWER 1:
/*
  double sayi1=12, sayi2=14,sayi3=15;
  print("Girilen $sayi1 , $sayi2  ve $sayi3 sayılarının ortalaması ${((sayi1 + sayi2 + sayi3)/3)}");
*/

//CEVAP - ANSWER 2
/*
  int kenar1=6, kenar2=6, kenar3=6;

  if((kenar1 == kenar2) && (kenar1 == kenar3)){
    print("Kenarlarını girdiğiniz üçgen eşkenardır");
  }else if((kenar1 != kenar2) && (kenar1 != kenar3) && (kenar2 != kenar3)){
    print("Kenarlarını girdiğiniz üçgen çeşitkenardır");
  }else{
    print("Kenarlarını girdiğiniz üçgen ikizkenardır");
  }
*/

//CEVAP - ANSWER 3:
/*
  double vizeNotu = 40;
  double finalNotu = 50;
  double hesaplananNot = 0;

  hesaplananNot = ((vizeNotu * 40) + (finalNotu * 60))/100 ;
  if(hesaplananNot >=50){
    print("Tebrikler, $hesaplananNot ile bu dersi geçtiniz");
  }else{
    print("Malesef, $hesaplananNot ile bu dersten kaldınız");
  }
*/

//CEVAP - ANSWER 4
/*
  for (int i = 1; i <= 5; i++) {
    print("$i.inci döngüde ismim : kaan caman");
  }

  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol+1}.inci döngüde ismim : kaan caman");
    kontrol++;
  }

int kontrol1=0;
  do{
   print("${kontrol1+1}.inci döngüde ismim : kaan caman");
   kontrol1++;
  }while(kontrol1<5);
  */

  //CEVAP - ANSWER 5:
  /*
  for(int i=1; i<100; i++){

    if((i % 3 == 0) && (i % 5 ==0)){
      print("15e tam bölünebilen $i nin karesi =  ${i * i}");
    }

  }
  */

  //CEVAP - ANSWER 6:
  /* int sayi = 6;
  int sonuc = 1;
  int sayac = 1;

  while (sayac <= sayi) {
    sonuc = sonuc * sayac;
    sayac++;
  }

  print("girdiğiniz $sayi sayısının faktoriyeli : $sonuc"); */

// CEVAP - ANSWER 7:
/* 
  print("Birinci notu giriniz");
  int birinciNot = int.parse(stdin.readLineSync()!);

  print("İkinci notu giriniz");
  int ikinciNot = int.parse(stdin.readLineSync()!);

  double sonuc = (birinciNot + ikinciNot) / 2;
  print("Ortalamanız $sonuc");
 */

  // CEVAP - ANSWER 9:
  print("Fiyatı  giriniz");
  int fiyat = int.parse(stdin.readLineSync()!);
  double sonFiyat = (fiyat * 18) / 100 + fiyat;

  print("son fiyatt $sonFiyat");
}
