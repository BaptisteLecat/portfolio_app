import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/author_repository/author_repository.dart'
    as dataAuthorRepository;

class AuthorRepository {
  dataAuthorRepository.AuthorRepository _authorRepository =
      dataAuthorRepository.AuthorRepository();

  Future<List<Author>> getOne(Author author) async {
    return Author.fromDataModel(
        await _authorRepository.fetchOne(id: author.id!));
  }

  Future<List<Author>> getAll() async {
    return Author.listFromMapData(await _authorRepository.fetchAll(params: ''));
  }

  Future<Author> create(Author author) async {
    return Author.fromDataModel(
        await _authorRepository.insert(body: author.toDataModel()));
  }

  Future<Author> update(Author author) async {
    return Author.fromDataModel(
        await _authorRepository.update(body: author.toDataModel()));
  }

  Future<bool> delete(Author author) async {
    return await _authorRepository.remove(id: author.id!);
  }
}
