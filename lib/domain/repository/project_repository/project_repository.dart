import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/project_repository/project_repository.dart'
    as dataProjectRepository;

class ProjectRepository {
  dataProjectRepository.ProjectRepository _projectRepository =
      dataProjectRepository.ProjectRepository();

  Future<List<Project>> getOne(Project project) async {
    return Project.fromDataModel(
        await _projectRepository.fetchOne(id: project.id!));
  }

  Future<List<Project>> getAll() async {
    return Project.listFromMapData(
        await _projectRepository.fetchAll(params: ''));
  }

  Future<Project> create(Project project) async {
    return Project.fromDataModel(
        await _projectRepository.insert(body: project.toDataModel()));
  }

  Future<Project> update(Project project) async {
    return Project.fromDataModel(
        await _projectRepository.update(body: project.toDataModel()));
  }

  Future<bool> delete(Project project) async {
    return await _projectRepository.remove(id: project.id!);
  }
}
