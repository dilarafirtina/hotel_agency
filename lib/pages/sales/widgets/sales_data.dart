class Sales {
  final String hotel,
      operator,
      guestName,
      guestSurname,
      nationality,
      voucher,
      room,
      voucherDate,
      checkIn,
      status,
      checkOut;
  final int overnight, totalBonus;

  Sales(
      {this.hotel = '',
      this.guestSurname = '',
      this.operator = '',
      this.guestName = '',
      this.nationality = '',
      this.voucher = '',
      this.room = '',
      this.voucherDate = '',
      this.checkIn = '',
      this.checkOut = '',
      this.overnight = 0,
      this.totalBonus = 0,
      this.status = 'completed'});
}

List completed = [
  Sales(
      hotel: "NG Phaselis Bay",
      operator: "ETS",
      guestName: "Hakan",
      guestSurname: "Ötmez",
      nationality: "EN",
      voucher: "0039585",
      room: "STK",
      voucherDate: "12.12.20022",
      checkIn: "12/12/2022",
      status: "Completed",
      checkOut: "15/12/2022"),
  Sales(
      hotel: "NG Phaselis Bay",
      operator: "ETS",
      guestName: "Ayşe",
      guestSurname: "Dönmez",
      nationality: "ABD",
      voucher: "0039585",
      room: "STK",
      voucherDate: "12.12.20022",
      checkIn: "12/12/2022",
      status: "Completed",
      checkOut: "15/12/2022"),
];

List preConfirmed = [
  Sales(
      hotel: "NG Phaselis Bay",
      operator: "ETS",
      guestName: "Emre",
      guestSurname: "Kaymaz",
      nationality: "TR",
      voucher: "0039585",
      room: "STK",
      voucherDate: "12.12.20022",
      checkIn: "12/12/2022",
      status: "Confirmed",
      checkOut: "15/12/2022"),
  Sales(
      hotel: "NG Phaselis Bay",
      operator: "ETS",
      guestName: "Mehtap",
      guestSurname: "Akar",
      nationality: "KZS",
      voucher: "0039585",
      room: "STK",
      voucherDate: "12.12.20022",
      checkIn: "12/12/2022",
      status: "Confirmed",
      checkOut: "15/12/2022"),
];

List cancelled = [
  Sales(
      hotel: "NG Phaselis Bay",
      operator: "ETS",
      guestName: "Mustafa",
      guestSurname: "ŞemYılmaz",
      nationality: "EN",
      voucher: "0039585",
      room: "STK",
      voucherDate: "12.12.20022",
      checkIn: "12/12/2022",
      status: "Cancelled",
      checkOut: "15/12/2022"),
  Sales(
      hotel: "NG Phaselis Bay",
      operator: "ETS",
      guestName: "Fatma",
      guestSurname: "Dönmez",
      nationality: "ABD",
      voucher: "0039585",
      room: "STK",
      voucherDate: "12.12.20022",
      checkIn: "12/12/2022",
      status: "Cancelled",
      checkOut: "15/12/2022"),
];
