import 'package:agency/constants.dart';
import 'package:agency/pages/sales/components/sales_data.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget salesGrid(BuildContext context, List sales) {
  RxBool _sortHotelAsc = true.obs;
  RxBool _sortNameAsc = true.obs;
  RxBool _sortSurnameAsc = true.obs;
  RxBool _sortNationalityAsc = true.obs;
  RxBool _sortOperatorAsc = true.obs;
  RxBool _sortVoucherAsc = true.obs;
  RxBool _sortRoomAsc = true.obs;
  RxBool _sortVoucherDateAsc = true.obs;
  RxBool _sortCheckInDateAsc = true.obs;
  RxBool _sortCheckoutDateAsc = true.obs;
  RxBool _sortOvernightAsc = true.obs;
  RxBool _sortBonusAsc = true.obs;
  RxBool _sortStatusAsc = true.obs;

  RxBool _sortAsc = true.obs;
  RxInt _sortColumnIndex = 0.obs;

  return Container(
    height: MediaQuery.of(context).size.height - 80,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Obx(
          () => DataTable(
            sortColumnIndex: _sortColumnIndex.value,
            sortAscending: _sortAsc.value,
            columns: <DataColumn>[
              DataColumn(
                  label: const Text(
                    'Otel',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortHotelAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortHotelAsc;
                    }
                    sales.sort((a, b) => a.hotel.compareTo(b.hotel));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Operator',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortOperatorAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortOperatorAsc;
                    }
                    sales.sort((a, b) => a.operator.compareTo(b.operator));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Misafir Adı',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortNameAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortNameAsc;
                    }
                    sales.sort((a, b) => a.guestName.compareTo(b.guestName));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Misafir Soyadı',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortSurnameAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortSurnameAsc;
                    }
                    sales.sort(
                        (a, b) => a.guestSurname.compareTo(b.guestSurname));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Milliyet',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value =
                          _sortNationalityAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortNationalityAsc;
                    }
                    sales
                        .sort((a, b) => a.nationality.compareTo(b.nationality));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Voucher No',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortVoucherAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortVoucherAsc;
                    }
                    sales.sort((a, b) => a.voucher.compareTo(b.voucher));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Oda',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortRoomAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortRoomAsc;
                    }
                    sales.sort((a, b) => a.room.compareTo(b.room));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Voucher Tarihi',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value =
                          _sortVoucherDateAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortVoucherDateAsc;
                    }
                    sales
                        .sort((a, b) => a.voucherDate.compareTo(b.voucherDate));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Check In Tarihi',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value =
                          _sortCheckInDateAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortCheckInDateAsc;
                    }
                    sales.sort((a, b) => a.checkIn.compareTo(b.checkIn));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Check Out Tarihi',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value =
                          _sortCheckoutDateAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortCheckoutDateAsc;
                    }
                    sales.sort((a, b) => a.checkOut.compareTo(b.checkOut));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: Text(
                    'Geceleme',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortOvernightAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortOvernightAsc;
                    }
                    sales.sort((a, b) => a.overnight.compareTo(b.overnight));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: Text(
                    'Toplanan Bonus',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortBonusAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortBonusAsc;
                    }
                    sales.sort((a, b) => a.totalBonus.compareTo(b.totalBonus));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: Text(
                    'Durum',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortStatusAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortStatusAsc;
                    }
                    sales.sort((a, b) => a.status.compareTo(b.status));
                    if (!_sortAsc.value) {
                      sales = sales.reversed.toList();
                    }
                  }),
            ],
            rows: List<DataRow>.generate(
              sales.length,
              (int index) => DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.08);
                  }
                  if (index.isEven) {
                    return Colors.grey.withOpacity(0.3);
                  }
                  return null;
                }),
                cells: <DataCell>[
                  DataCell(Text(sales[index].hotel)),
                  DataCell(Text(sales[index].operator)),
                  DataCell(Text(sales[index].guestName)),
                  DataCell(Text(sales[index].guestSurname)),
                  DataCell(Text(sales[index].nationality)),
                  DataCell(Text(sales[index].voucher)),
                  DataCell(Text(sales[index].room)),
                  DataCell(Text(sales[index].voucherDate)),
                  DataCell(Text(sales[index].checkIn)),
                  DataCell(Text(sales[index].checkOut)),
                  DataCell(Text(sales[index].overnight.toString())),
                  DataCell(Text(sales[index].totalBonus.toString())),
                  DataCell(Text(sales[index].status)),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
