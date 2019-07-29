class JenisVendor {
  int jenisVendorId;
  String jenisVendorTitle;

  JenisVendor({this.jenisVendorId, this.jenisVendorTitle});

  static List<JenisVendor> getJenisVendors() {
    return <JenisVendor>[
      JenisVendor(jenisVendorId: 1, jenisVendorTitle: 'Catering'),
      JenisVendor(jenisVendorId: 2, jenisVendorTitle: 'Dekorasi'),
      JenisVendor(jenisVendorId: 3, jenisVendorTitle: 'Event Organizer'),
      JenisVendor(jenisVendorId: 4, jenisVendorTitle: 'Host & MC'),
      JenisVendor(jenisVendorId: 5, jenisVendorTitle: 'Photography & Videography'),
      JenisVendor(jenisVendorId: 6, jenisVendorTitle: 'Venue'),
      JenisVendor(jenisVendorId: 7, jenisVendorTitle: 'Beauty Treatment'),
      JenisVendor(jenisVendorId: 8, jenisVendorTitle: 'Car Rental'),
      JenisVendor(jenisVendorId: 9, jenisVendorTitle: 'Bridal & Makeup Artist'),
      JenisVendor(jenisVendorId: 10, jenisVendorTitle: 'LED, LIghtning & Effect'),
      JenisVendor(jenisVendorId: 11, jenisVendorTitle: 'Barbershop'),
      JenisVendor(jenisVendorId: 12, jenisVendorTitle: 'Band & Music'),
      JenisVendor(jenisVendorId: 13, jenisVendorTitle: 'Merchandise'),
    ];
  }
}

