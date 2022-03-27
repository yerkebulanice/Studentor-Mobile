class NavigationItem {
  String title;

  NavigationItem(this.title);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem("Стажировки"),
    NavigationItem("Мои заявки"),
  ];
}

class Application {
  String position;
  String company;
  String status;
  String price;
  String logo;

  Application(this.position, this.company, this.status, this.price, this.logo);
}

List<Application> getApplications() {
  return <Application>[
    Application("Стажер в информационные технологии", " Azimut Solutions ",
        "Delivered", "90000", "assets/images/azimut.png"),
    Application(
        "Java-инженер", "EPAM", "Opened", "100000", "assets/images/epam.png"),
    Application("PHP программист ", " KOLESA group ", "Cancelled", "55000",
        "assets/images/kolesa.png"),
    Application("Стажер — программист в отдел техподдержки", "Prime Source",
        "Delivered", "85000", "assets/images/prime.png"),
    Application("Стажировка ", "Samgau TEAM", "Not selected", "120000",
        "assets/images/samgau.png"),
  ];
}

class Job {
  String position;
  String company;
  String price;
  String concept;
  String logo;
  String city;

  Job(this.position, this.company, this.price, this.concept, this.logo,
      this.city);
}

List<Job> getJobs() {
  return <Job>[
    Job("Стажер — программист в отдел техподдержки", "Prime Source", "85000",
        "Part-Time", "assets/images/prime.png", "Astana, Kazakhstan"),
    Job("Стажировка ", "Samgau TEAM", "120000", "Part-Time",
        "assets/images/samgau.png", "Almaty, Kazakhstan"),
    Job("Java-инженер", "EPAM", "100000", "Full-Time", "assets/images/epam.png",
        "Almaty, Kazakhstan"),
    Job("PHP программист", "KOLESA group ", "55000", "Part-Time",
        "assets/images/kolesa.png", "Astana, Kazakhstan"),
    Job("Flutter Developer", "Azimut Solutions", "140000", "Internship",
        "assets/images/azimut.png", "Astana, Kazakhstan"),
  ];
}

List<String> getJobsRequirements() {
  return <String>[
    "Exceptional communication skills and team-working skills",
    "Know the principles of animation and you can create high fidelity prototypes",
    "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
    "Good UI/UX knowledge",
  ];
}
