import 'package:agency/not_found_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/configuration.dart';

Widget bonusGrid(BuildContext context, List sales, String? type) {
  RxBool _sortHotelAsc = true.obs;
  RxBool _sortNameAsc = true.obs;
  RxBool _sortSurnameAsc = true.obs;
  RxBool _sortReservationDateAsc = true.obs;
  RxBool _sortCheckInDateAsc = true.obs;
  RxBool _sortCheckoutDateAsc = true.obs;
  RxBool _sortBonusAsc = true.obs;
  RxBool _sortStatusAsc = true.obs;

  RxBool _sortAsc = true.obs;
  RxInt _sortColumnIndex = 0.obs;

  return Container(
      height: MediaQuery.of(context).size.height - 80,
      padding: EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.all(defaultPadding),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Obx(
            () => DataTable(
              showBottomBorder: true,
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
                      'Ad',
                    ),
                    onSort: (columnIndex, sortAscending) {
                      if (columnIndex == _sortColumnIndex.value) {
                        _sortAsc.value = _sortNameAsc.value = sortAscending;
                      } else {
                        _sortColumnIndex.value = columnIndex;
                        _sortAsc = _sortNameAsc;
                      }
                      sales.sort((a, b) => a.name.compareTo(b.name));
                      if (!_sortAsc.value) {
                        sales = sales.reversed.toList();
                      }
                    }),
                DataColumn(
                    label: const Text(
                      'Soyad',
                    ),
                    onSort: (columnIndex, sortAscending) {
                      if (columnIndex == _sortColumnIndex.value) {
                        _sortAsc.value = _sortSurnameAsc.value = sortAscending;
                      } else {
                        _sortColumnIndex.value = columnIndex;
                        _sortAsc = _sortSurnameAsc;
                      }
                      sales.sort((a, b) => a.surname.compareTo(b.surname));
                      if (!_sortAsc.value) {
                        sales = sales.reversed.toList();
                      }
                    }),
                DataColumn(
                    label: const Text(
                      'Reservasyon Tarihi',
                    ),
                    onSort: (columnIndex, sortAscending) {
                      if (columnIndex == _sortColumnIndex.value) {
                        _sortAsc.value =
                            _sortReservationDateAsc.value = sortAscending;
                      } else {
                        _sortColumnIndex.value = columnIndex;
                        _sortAsc = _sortReservationDateAsc;
                      }
                      sales.sort((a, b) =>
                          a.reservationDate.compareTo(b.reservationDate));
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
                type == "reservation"
                    ? DataColumn(
                        label: Text(
                          'Durum',
                        ),
                        onSort: (columnIndex, sortAscending) {
                          if (columnIndex == _sortColumnIndex.value) {
                            _sortAsc.value =
                                _sortStatusAsc.value = sortAscending;
                          } else {
                            _sortColumnIndex.value = columnIndex;
                            _sortAsc = _sortStatusAsc;
                          }
                          sales.sort((a, b) => a.status.compareTo(b.status));
                          if (!_sortAsc.value) {
                            sales = sales.reversed.toList();
                          }
                        })
                    : DataColumn(
                        label: Text(
                          'Harcanan Bonus',
                        ),
                        onSort: (columnIndex, sortAscending) {
                          if (columnIndex == _sortColumnIndex.value) {
                            _sortAsc.value =
                                _sortBonusAsc.value = sortAscending;
                          } else {
                            _sortColumnIndex.value = columnIndex;
                            _sortAsc = _sortBonusAsc;
                          }
                          sales.sort(
                              (a, b) => a.usedBonus.compareTo(b.usedBonus));
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
                    DataCell(Text(sales[index].name)),
                    DataCell(Text(sales[index].surname)),
                    DataCell(Text(sales[index].reservationDate)),
                    DataCell(Text(sales[index].checkIn)),
                    DataCell(Text(sales[index].checkOut)),
                    type == "reservation"
                        ? DataCell(Text(sales[index].status))
                        : DataCell(Text(sales[index].usedBonus.toString()))
                  ],
                ),
              ),
            ),
          ),
        ],
      ));
}
