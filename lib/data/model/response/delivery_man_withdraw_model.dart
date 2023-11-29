class DeliveryManWithdrawModel {
  int? totalSize;
  String? limit;
  String? offset;
  List<Withdraws>? withdraws;

  DeliveryManWithdrawModel(
      {this.totalSize, this.limit, this.offset, this.withdraws});

  DeliveryManWithdrawModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['withdraws'] != null) {
      withdraws = <Withdraws>[];
      json['withdraws'].forEach((v) {
        withdraws!.add(Withdraws.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = totalSize;
    data['limit'] = limit;
    data['offset'] = offset;
    if (withdraws != null) {
      data['withdraws'] = withdraws!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Withdraws {
  int? id;
  double? amount;
  String? transactionNote;
  int? approved;
  String? createdAt;
  String? updatedAt;


  Withdraws(
      {this.id,
        this.amount,
        this.transactionNote,
        this.approved,
        this.createdAt,
        this.updatedAt});

  Withdraws.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if(json['amount'] != null){
      try{
        amount = json['amount'].toDouble();
      }catch(e){
        amount = double.parse(json['amount'].toString());
      }
    }

    transactionNote = json['transaction_note'];
    approved = json['approved'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['amount'] = amount;
    data['transaction_note'] = transactionNote;
    data['approved'] = approved;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;

    return data;
  }
}


