
import '../models/programming_language.dart';

class DummyData {
  static List<ProgrammingLanguage> programmingLanguages = [
    ProgrammingLanguage(
      id: '1',
      name: 'Python',
      description: 'لغة برمجة عالية المستوى سهلة التعلم، تستخدم في الذكاء الاصطناعي وتحليل البيانات وتطوير الويب.',
      yearCreated: '1991',
      creator: 'Guido van Rossum',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1869px-Python-logo-notext.svg.png',
      features: [
        'سهلة التعلم للمبتدئين',
        'مكتبات غنية للذكاء الاصطناعي',
        'تستخدم في تطوير الويب',
        'لغة مفسرة',
      ],
      popularity: 'الأولى',
      website: 'https://python.org',
    ),
    ProgrammingLanguage(
      id: '2',
      name: 'JavaScript',
      description: 'لغة برمجة نصية تستخدم في تطوير الواجهات الأمامية والخلفية، تعمل في المتصفح.',
      yearCreated: '1995',
      creator: 'Brendan Eich',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png',
      features: [
        'تعمل في المتصفح',
        'تستخدم مع React و Vue',
        'تعمل على الخادم (Node.js)',
        'غير متزامنة',
      ],
      popularity: 'الثانية',
      website: 'https://javascript.com',
    ),
    ProgrammingLanguage(
      id: '3',
      name: 'Java',
      description: 'لغة برمجة كائنية التوجه، تستخدم في تطبيقات Android والأنظمة الكبيرة.',
      yearCreated: '1995',
      creator: 'James Gosling',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg',
      features: [
        'تعمل على أي منصة (Write Once, Run Anywhere)',
        'تستخدم في تطبيقات Android',
        'لغة كائنية التوجه',
        'آمنة وقوية',
      ],
      popularity: 'الثالثة',
      website: 'https://java.com',
    ),
    ProgrammingLanguage(
      id: '4',
      name: 'Dart',
      description: 'لغة برمجة طورتها Google، تستخدم مع إطار عمل Flutter لبناء تطبيقات متعددة المنصات.',
      yearCreated: '2011',
      creator: 'Google',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
      features: [
        'تستخدم مع Flutter',
        'تطبيقات أصلية على iOS و Android',
        'أداء عالي',
        'سهلة التعلم للمبتدئين',
      ],
      popularity: 'سريعة النمو',
      website: 'https://dart.dev',
    ),
    ProgrammingLanguage(
      id: '5',
      name: 'Kotlin',
      description: 'لغة برمجة حديثة تعمل على JVM، تستخدم في تطوير تطبيقات Android.',
      yearCreated: '2011',
      creator: 'JetBrains',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/74/Kotlin_Icon.png',
      features: [
        'اللغة الرسمية لتطوير Android',
        'أكثر أماناً من Java',
        'متوافقة مع Java',
        'كتابة شيفرة أقل',
      ],
      popularity: 'متنامية',
      website: 'https://kotlinlang.org',
    ),

  ];
}