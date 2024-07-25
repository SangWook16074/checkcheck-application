import 'package:flutter/material.dart';

class MainPageEditPage extends StatelessWidget {
  const MainPageEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          '      정보 수정하기',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    '프로필 사진',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                        child:
                            Icon(Icons.person, size: 60, color: Colors.white),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child:
                              Icon(Icons.edit, color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const ProfileEditField(
              label: '사용자 이름',
              initialValue: '홍길동',
              icon: Icons.check_circle,
            ),
            const ProfileEditField(
              label: '소속',
              initialValue: '인덕대학교',
              icon: Icons.check_circle,
            ),
            const ProfileEditField(
              label: '비밀번호',
              initialValue: '●●●●●●●●',
              icon: Icons.check_circle,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}

// 프로필 수정 필드
class ProfileEditField extends StatelessWidget {
  final String label;
  final String initialValue;
  final IconData icon;
  final bool obscureText;

  const ProfileEditField({
    required this.label,
    required this.initialValue,
    required this.icon,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: TextEditingController(text: initialValue),
                    style: TextStyle(color: Colors.white),
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                    ),
                  ),
                ),
                Icon(icon, color: Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
