class Project {
  final String name;
  final String description;
  final String image;
  final String iosUrl;
  final String githubUrl;
  final String playStoreUrl;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.githubUrl,
    required this.iosUrl,
    required this.playStoreUrl,
  });
}

List<Project> projectList = [
  Project(
      name: 'CV Lab Application',
      description:
      "CV Lab is an advanced and user-friendly mobile application designed to help users create professional resumes and cover letters with ease. The app offers a variety of customizable templates tailored for different industries and experience levels, enabling users to craft visually appealing and structured CVs. Whether you're a fresh graduate, experienced professional, or switching careers, CV Lab provides guidance and tools to highlight your skills, achievements, and qualifications.",
      image: 'assets/images/cv_lab.jpg',
      iosUrl: 'https://apps.apple.com/pk/app/cv-lab/id6480534877',
      githubUrl: '',
      playStoreUrl: ''),
  Project(
      name: 'Positive Path Meditation',
      description:
      "Positive Path is a guided meditation app designed to help you achieve inner peace, clarity, and positivity. Whether you're looking to reduce stress, improve focus, or enhance your emotional well-being, Positive Path offers a wide variety of meditation sessions tailored to meet your needs. From mindfulness practices to sleep relaxation techniques, the app is your companion on the journey toward mental and emotional balance.",
      image: 'assets/images/positive.png',
      iosUrl: '',
      githubUrl: '',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=com.wb.positive_path_meditation'),
  Project(
      name: 'AMS (Attendance Management System)',
      description:
      "AMS (Attendance Management System) is a comprehensive and user-friendly solution designed to simplify and automate the process of tracking attendance. Whether you're managing a workplace, school, or event, AMS ensures accurate attendance records, streamlines reporting, and improves overall productivity. The system is equipped with powerful features that allow administrators to track attendance in real-time, generate reports, and analyze trends effortlessly.",
      image: 'assets/images/ams.jfif',
      iosUrl: '',
      githubUrl: 'https://www.whiteboxtech.net/projects/ui_ux/AMS',
      playStoreUrl: ''),
];
