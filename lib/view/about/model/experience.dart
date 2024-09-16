class Experience {
  final String role;
  final String company;
  final String experience;
  final String startDate;
  final String endDate;
  final String status;

  Experience({required this.role, required this.company, required this.experience, required this.startDate, required this.endDate, required this.status});
}

List<Experience> experienceList=[
  Experience(role: "Flutter Developer", company: "WhiteBox", experience: "1 Year", startDate: "Nov 2023", endDate: "Present", status: "Full-time"),
  Experience(role: "Flutter Developer", company: "Codsoft", experience: "Project based", startDate: "Oct 2023", endDate: "Nov 2023", status: "Remote"),
  Experience(role: "Junior Flutter Developer", company: "Medtronix Systems", experience: "3 months", startDate: "Aug 2023", endDate: "Oct 2023", status: "Remote"),
  Experience(role: "Junior Flutter Developer", company: "TX Devs", experience: "1 Year", startDate: "July 2022", endDate: "June 2023", status: "Part-time"),
  Experience(role: "Flutter Internship", company: "SOT (School of Technologies)", experience: "3 months", startDate: "May 2022", endDate: "July 2023", status: "Part-time"),
];