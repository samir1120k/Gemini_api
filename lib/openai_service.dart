import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kara/seceret.dart';

class OpenaiService {
  final List<Map<String, String>> message = [];
  Future<String> isArtPromptAPI(String prompt) async {
    try {
      final res = await http.post(
        Uri.parse(
            'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$hehe'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $hehe',
        },
        body: jsonEncode({
          "model": "gemini-1.5-flash",
          "messages": [
            {
              'role': 'user',
              'content':
                  'Does this message want to generate an AI picture ,image,art or anything similar? $prompt . Simply answer with yes or no.',
            }
          ],
        }),
      );
      print(res.body);
      if (res.statusCode == 200) {
        String content =
            jsonDecode(res.body)['choices'][0]['message']['content'];
        content = content.trim();

        switch (content) {
          case 'Yes':
          case 'yes':
          case 'Yes.':
          case 'yes.':
            final res = await dallEAPI(prompt);
            return res;
          default:
            final res = await geminiAPI(prompt);
            return res;
        }
      }
      return 'An internal error occurred';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> geminiAPI(String prompt) async {
    message.add({
      'role': 'user',
      'content': prompt,
    });

    try {
      final res = await http.post(
        Uri.parse(
            'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$hehe'), // Replace with actual Gemini API endpoint
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $hehe', // Replace with your Gemini API key
        },
        body: jsonEncode({
          "model":
              "gemini-1.5-flash", // Update with the actual Gemini model name, if applicable
          "messages":
              message, // Adjust message format if Gemini requires something different
        }),
      );

      if (res.statusCode == 200) {
        String content = jsonDecode(res.body)['choices'][0]['message']
            ['content']; // Adjust parsing if response structure differs
        content = content.trim();

        message.add({
          'role': 'assistant',
          'content': content,
        });
        return content;
      }
      return 'An internal error occurred';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> dallEAPI(String prompt) async {
    message.add({
      'role': 'user',
      'content': prompt,
    });
    try {
      final res = await http.post(
        Uri.parse('https://api.openai.com/v1/images/generations'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $hehe',
        },
        body: jsonEncode({
          'prompt': prompt,
          'n': 1,
        }),
      );

      if (res.statusCode == 200) {
        String imageUrl = jsonDecode(res.body)['data'][0]['url'];
        imageUrl = imageUrl.trim();

        message.add({
          'role': 'assistant',
          'content': imageUrl,
        });
        return imageUrl;
      }
      return 'An internal error occurred';
    } catch (e) {
      return e.toString();
    }
  }
}
