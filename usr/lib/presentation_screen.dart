import 'package:flutter/material.dart';
import 'slide_data.dart';

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({super.key});

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < inferenceSlides.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide ${_currentPage + 1} / ${inferenceSlides.length}'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: inferenceSlides.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return SlideWidget(slide: inferenceSlides[index]);
              },
            ),
          ),
          _buildControls(),
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            onPressed: _currentPage > 0 ? _previousPage : null,
            icon: const Icon(Icons.arrow_back),
            label: const Text("Sebelumnya"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
          ),
          ElevatedButton.icon(
            onPressed: _currentPage < inferenceSlides.length - 1 ? _nextPage : null,
            icon: const Icon(Icons.arrow_forward),
            label: const Text("Selanjutnya"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SlideWidget extends StatelessWidget {
  final Slide slide;

  const SlideWidget({super.key, required this.slide});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.indigo.shade100),
            ),
            child: Text(
              slide.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),

          // Main Content
          Text(
            slide.content,
            style: const TextStyle(
              fontSize: 18,
              height: 1.5,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 24),

          // Example Section
          if (slide.example != null) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Colors.amber),
                      SizedBox(width: 8),
                      Text(
                        "Contoh / Ilustrasi:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    slide.example!,
                    style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],

          // Question Section
          if (slide.question != null) ...[
            const Text(
              "Pertanyaan:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              slide.question!,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
          ],

          // Answer Section (Hidden by default could be cool, but let's show it clearly for studying)
          if (slide.answer != null) ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Jawaban / Kesimpulan:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    slide.answer!,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
