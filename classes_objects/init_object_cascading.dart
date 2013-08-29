class Address {
  String street;
  String city;
  
  Address(this.street, this.city);
}

class Color {
  String name;
  String hex;
  
  String toString() => '$name is $hex in hex';
}

main() {
  Person bob = new Person()
      ..firstName = 'Bob'
      ..lastName = 'Smith'
      ..signedAgreement = true
      ..age = 42
      ..favoriteColors.add(new Color()..name="red"..hex="#FF0000")
      ..favoriteColors.add(new Color()..name="yellow"..hex="#FFFF00")
      ..addresses['home'] = new Address("main st", "smallville")
      ..addresses['work'] = new Address('oak way', 'gotham');
