import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/company_repository/company_repository.dart'
    as dataCompanyRepository;

class CompanyRepository {
  dataCompanyRepository.CompanyRepository _companyRepository =
      dataCompanyRepository.CompanyRepository();

  Future<List<Company>> getOne(Company company) async {
    return Company.fromDataModel(
        await _companyRepository.fetchOne(id: company.id!));
  }

  Future<List<Company>> getAll() async {
    return Company.listFromMapData(
        await _companyRepository.fetchAll(params: ''));
  }

  Future<Company> create(Company company) async {
    return Company.fromDataModel(
        await _companyRepository.insert(body: company.toDataModel()));
  }

  Future<Company> update(Company company) async {
    return Company.fromDataModel(
        await _companyRepository.update(body: company.toDataModel()));
  }

  Future<bool> delete(Company company) async {
    return await _companyRepository.remove(id: company.id!);
  }
}
