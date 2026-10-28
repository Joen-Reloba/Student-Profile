import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  static const purple = Color(0xFF522D60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4F8),
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1F06AC),
        foregroundColor: const Color(0xFFF5EFE1),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Profile header
                  Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1F06AC),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x22522D60),
                          blurRadius: 20,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0x66FFFFFF),
                              width: 2,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 44,
                            backgroundColor: Colors.white,
                            child: Text(
                              'JP',
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: purple,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Joen Paul Reloba',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0x26FFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'BSIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    'Student Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: purple,
                    ),
                  ),
                  const SizedBox(height: 14),

                  // Information card
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFEAE2ED)),
                    ),
                    child: const Column(
                      children: [
                        _ProfileInfo(
                          icon: Icons.badge_outlined,
                          label: 'Student Number',
                          value: '559602',
                        ),
                        Divider(
                          height: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Color(0xFFF0EAF2),
                        ),
                        _ProfileInfo(
                          icon: Icons.email_outlined,
                          label: 'Email',
                          value: 'joen.test@gmail.com',
                        ),
                        Divider(
                          height: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Color(0xFFF0EAF2),
                        ),
                        _ProfileInfo(
                          icon: Icons.school_outlined,
                          label: 'Course',
                          value:
                              'Bachelor of Science in Information Technology',
                        ),

                        Divider(
                          height: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Color(0xFFF0EAF2),
                        ),
                        _ProfileInfo(
                          icon: Icons.class_outlined,
                          label: 'Year Level and Section',
                          value: '3rd Year - CCE106(3447)',
                        ),

                        Divider(
                          height: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Color(0xFFF0EAF2),
                        ),
                        _ProfileInfo(
                          icon: Icons.info_outline,
                          label: 'Introduction',
                          value: 'I am a student in the 3rd year, CCE106 section. Striving to become a professional in the field of Information Technology, I am dedicated to learning and growing in my chosen career path. With a passion for technology and a commitment to excellence, I aim to make a positive impact in the IT industry.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ProfileInfo({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF3EDF5),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: StudentProfilePage.purple, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF756B7A),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF302536),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
