import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/api/repository/contract_repository/contract_repository.dart'
    as dataContractRepository;

class ContractRepository {
  dataContractRepository.ContractRepository _contractRepository =
      dataContractRepository.ContractRepository();

  Future<List<Contract>> getOne(Contract contract) async {
    return Contract.fromDataModel(
        await _contractRepository.fetchOne(id: contract.id!));
  }

  Future<List<Contract>> getAll() async {
    return Contract.listFromMapData(
        await _contractRepository.fetchAll(params: ''));
  }

  Future<Contract> create(Contract contract) async {
    return Contract.fromDataModel(
        await _contractRepository.insert(body: contract.toDataModel()));
  }

  Future<Contract> update(Contract contract) async {
    return Contract.fromDataModel(
        await _contractRepository.update(body: contract.toDataModel()));
  }

  Future<bool> delete(Contract contract) async {
    return await _contractRepository.remove(id: contract.id!);
  }
}
