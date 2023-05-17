// JEDEC ROM dumper by org.

// К сожалению на ардуино остается только 12 шлангов для GPIO на шину адреса (4 КБайт = 12 бит).
// Поэтому к чипу подключаем только эти 12 шлангов, а остальные ручками раскидываем на Vcc/Gnd (ручная адресация старших разрядов).
// Сдампили, перекоммутировали, радуемся.

// Рекомендуется дампить по два раза, шевелить бред борду между попытками и сравнивать потом дамп в утилите типа CompareIt.

uint8_t data_bus_pins[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };
uint8_t addr_bus_pins[12] = { 8, 9, 10, 11, 12, 13,   19, 18, 17, 16, 15, 14 };

uint16_t addr;

// put your setup code here, to run once:
void setup() {

  for (int i=0; i<12; i++) {
    pinMode (addr_bus_pins[i], OUTPUT);
  }

  for (int i=0; i<8; i++) {
    pinMode (data_bus_pins[i], INPUT);
  }

  Serial.begin(9600);

  addr = 0;
}

// put your main code here, to run repeatedly:
void loop() {

  if (addr >= 4096) {
    return;
  }  

  // Set address

  for (int i=0; i<12; i++) {
    digitalWrite (addr_bus_pins[i], (addr >> i) & 1 ? HIGH : LOW);
  }

  // Sleep

  delay(10);

  // Read data

  uint8_t data = 0;
  for (int i=0; i<8; i++) {
    data |= digitalRead (data_bus_pins[i]) << i;
  }

  // Sleep

  delay(10);

  // Output

  Serial.print (data, HEX);
  Serial.print (" ");

  addr += 1;
}
