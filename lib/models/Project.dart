class Project {
  final String? title, description, tasks, technology;

  Project({this.title, this.description, this.tasks, this.technology});
}

List<Project> demoProjects = [
  Project(
    title: "Speech Therapy Game Using a Deep Neural Network Sibilant Consonants Classifier",
    description:
        "The project entailed the creation of a game designed to serve as a speech treatment aid, with the extra complication of remotely collecting audio samples in accordance with Covid-related regulations. To do this, the game was made available on both Web and Mobile platforms and required to communicate with a remote categorization server. A backend program was also developed to allow speech therapists to classify the audio samples collected, monitor their patients' progress, and change game parameters as needed. Noise and silence detectors were used to prevent empty samples and verify that audio samples were of sufficient quality. This study also allowed the paper 'Deploying a Speech Therapy Game Using a Deep Neural Network Sibilant Consonants Classifier' to be published.",
    tasks: "Analysis and Architecture planning; Web, Mobile and, Unity development; Data Collection, Analysis and Cleaning; Model Training and refining.",
    technology: "Python; Dart; JavaScript; C#; C; ReactJS; Flutter; TensorFlow; Unity; Python Anywhere; Cython; SQLite; Dropbox.",
  ),
  Project(
    title: "Predicting Earthquakes using Dam's vibration",
    description:
        "The study involved collecting the vibration frequency of a dam in order to analyze its general condition and precisely predict the potential of an earthquake. To do so, I was given data from two different dams, which required extensive analysis, cleaning, and preparation for the building of a predictive model. Despite limited financing, the research produced a Convolutional Neural Network capable of predicting both the dam's condition and the possibility of an earthquake in its proximity, but it was still in its early stages of development.",
    tasks: "Data Analysis and Cleaning; Model Training.",
    technology: "Python; TensorFlow; SQLite.",
  ),
  Project(
    title: "Detection of code defects",
    description:
        "In the final project, an Auto Encoder was used to convert code snippets into color map representations, which were then analyzed by a Convolutional Neural Network to predict the presence of code faults. This was accomplished by creating a custom semantic and syntax highlighter that provided a color map representation of the code, as well as an Auto Encoder that was trained to create these color maps without the assistance of the highlighter. The project's goal was to improve an existing Code analysis system, which had previously depended on slow tools to find flaws in MATLAB codebases. The final goal was to use powerful AI and ML technologies to automate the process of discovering code defects.",
    tasks: "Data Analysis and Cleaning; Syntax and Semantic Highlighter Creation; Model Training and refining.",
    technology: "Python; JavaScript; TensorFlow; SQLite; TextMate.",
  ),
];




