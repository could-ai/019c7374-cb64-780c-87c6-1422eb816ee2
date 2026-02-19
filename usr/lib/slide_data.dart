class Slide {
  final String title;
  final String content;
  final String? example;
  final String? question;
  final String? answer;

  const Slide({
    required this.title,
    required this.content,
    this.example,
    this.question,
    this.answer,
  });
}

final List<Slide> inferenceSlides = [
  Slide(
    title: "Reading Comprehension:\nMaking Inferences",
    content: "Selamat datang! Hari ini kita akan belajar menjadi 'Detektif Membaca'.\n\nTopik: Making Inferences (Membuat Kesimpulan).",
    example: "Siapkan diri kalian untuk membaca 'apa yang tersirat', bukan hanya 'apa yang tersurat'.",
  ),
  Slide(
    title: "Apa itu Inference?",
    content: "Inference itu simpelnya adalah: \n\n'Membaca di antara baris-baris kalimat' (Reading between the lines).\n\nPenulis tidak memberitahu kita secara langsung, tapi dia memberikan PETUNJUK. Tugas kita adalah menyimpulkan petunjuk itu.",
    example: "Bayangkan kamu melihat temanmu datang dengan baju basah kuyup dan membawa payung.\n\nPenulis tidak bilang 'Hujan'. Tapi kamu tahu pasti di luar sedang hujan. Itu Inference!",
  ),
  Slide(
    title: "Rumus Making Inferences",
    content: "Bagaimana cara otak kita membuat kesimpulan? Sebenarnya ada rumusnya lho!",
    example: "Petunjuk di Teks (Clues)\n+\nPengetahuan Kita (Background Knowledge)\n=\nINFERENCE (Kesimpulan)",
  ),
  Slide(
    title: "Contoh Kalimat Sederhana 1",
    content: "Mari kita lihat contoh kalimat pendek.",
    example: "Kalimat: 'Budi menguap lebar dan berkali-kali melihat jam dindingnya saat guru sedang menjelaskan.'",
    question: "Apa yang bisa kita simpulkan?",
    answer: "Budi merasa bosan atau mengantuk.",
  ),
  Slide(
    title: "Contoh Kalimat Sederhana 2",
    content: "Coba perhatikan situasi ini.",
    example: "Kalimat: 'Siti berlari masuk ke rumah sambil memegang pipinya yang merah dan matanya berkaca-kaca.'",
    question: "Apa yang terjadi pada Siti?",
    answer: "Siti mungkin baru saja menangis atau kesakitan (mungkin sakit gigi atau habis ditampar/terbentur).",
  ),
  Slide(
    title: "Kata Kunci dalam Soal Ujian",
    content: "Di soal-soal TOEFL atau ujian sekolah, pertanyaan inference biasanya menggunakan kata-kata khusus.",
    example: "1. What can be inferred from the text?\n2. The passage implies that...\n3. It can be concluded that...\n4. The author suggests that...",
  ),
  Slide(
    title: "Latihan 1: Situasi Restoran",
    content: "Baca teks singkat ini:",
    example: "'Kami pergi ke restoran baru itu pada jam 7 malam di hari Sabtu. Anehnya, tidak ada antrean dan banyak meja kosong. Pelayannya pun tampak santai main HP.'",
    question: "Apa yang bisa disimpulkan tentang restoran itu?",
    answer: "Restoran itu mungkin tidak terlalu populer atau makanannya kurang enak. (Karena biasanya malam Minggu restoran ramai).",
  ),
  Slide(
    title: "Latihan 2: Di Bandara",
    content: "Perhatikan pengumuman ini:",
    example: "'Perhatian, penerbangan GA-123 tujuan Bali ditunda karena cuaca buruk. Penumpang dimohon menunggu di ruang tunggu.'",
    question: "Apa yang bisa disimpulkan tentang perasaan penumpang?",
    answer: "Mereka mungkin merasa kecewa, kesal, atau bosan karena harus menunggu lebih lama.",
  ),
  Slide(
    title: "Tips & Trik Penting!",
    content: "Hati-hati saat menjawab soal Inference!",
    example: "1. Jangan menebak terlalu jauh (Wild Guess). Jawaban harus tetap ada dasarnya di teks.\n2. Cari bukti pendukung. Kalau kamu menyimpulkan A, mana kalimat yang mendukung A?\n3. Gunakan logika umum.",
  ),
  Slide(
    title: "Ringkasan (Summary)",
    content: "Ingat ya teman-teman:",
    example: "Making Inferences = Menjadi Detektif.\n\nGabungkan apa yang kamu baca dengan apa yang sudah kamu tahu. Jangan takut menyimpulkan, asal ada buktinya!",
  ),
];
