class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
  });
}

// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/w01.png',
    title: 'Landing Project',
    subtitle:
        'This is a Landing Page created as a beginner project using html and css.',
    githubLink: 'https://github.com/CODECOMMANDER6969/OCTANET_MARCH',
  ),
  ProjectUtils(
    image: 'assets/w02.png',
    title: 'Login Portal',
    subtitle:
        'This is a responsive Login Page to a registration form.',
    githubLink: 'https://github.com/CODECOMMANDER6969/COGNIFYZ_APRIL_2024',
  ),
  ProjectUtils(
    image: 'assets/w03.png',
    title: 'ToDo List',
    subtitle:
        'ToDo List for keeping count of tasks created for OPCODE.',
    githubLink: 'https://github.com/CODECOMMANDER6969/OCTANET_MARCH_TASK2',
  ),
];
