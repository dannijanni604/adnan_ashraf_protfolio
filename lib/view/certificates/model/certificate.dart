class Certificate {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  Certificate({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<Certificate> certificateList = [
  Certificate(
    name: 'Flutter Development Course',
    organization: 'SOT (School of Technologies)',
    date: 'Sep 2022',
    skills: 'iOS App Development · Flutter · Flutter App Development · Mobile Application Development · Android App Development',
    credential:  '',
  ),
  Certificate(
    name: 'Android Application Development',
    organization: 'Great Learning',
    date: 'Oct 2022',
    skills: 'Android App · Flutter · Flutter App Development · Mobile Application Development · Android App Development',
    credential:  'https://www.verify.mygreatlearning.com/YFNEPKDO`',
  ),
  Certificate(
    name: 'Freelancing Course',
    organization: 'DigiSkills',
    date: 'JUL 2023',
    skills: 'Flutter . Clean Architecture',
    credential:  '',
  ),
  Certificate(
    name: 'The Fundamental of Digital Marketing',
    organization: 'Google Certified',
    date: 'May 2022',
    skills: 'iOS App Development · Flutter · Flutter App Development · Mobile Application Development · Android App Development',
    credential:  'https://learndigital.withgoogle.com/link/1tb5mplmosg/',
  ),
  // Certificate(
  //   name: 'Powering Your App with Live Web Data',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . API\'s',
  //   credential:  'https://www.linkedin.com/learning/certificates/643f05463ae529f24bd9ea66a6ead9a20469bdb875a9ddda048c698eda3ee7c1',
  // ),
  // Certificate(
  //   name: 'Firebase Cloud Firestore',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . FireStore',
  //   credential:  'https://www.linkedin.com/learning/certificates/8f8be25531d2bcdbab1972482150277f9a239a13ba4d314c0574638bf28d07d2',
  // ),
  // Certificate(
  //   name: 'Getting started with Flutter Development',
  //   organization: 'Coursera',
  //   date: 'AUG 2023',
  //   skills: 'Flutter . Dart',
  //   credential:  'https://www.coursera.org/account/accomplishments/certificate/HQ4LFHSF4LKZ',
  // ),
];
