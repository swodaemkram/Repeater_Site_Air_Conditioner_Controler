/*
  Repeater Site Air Conditioner Controler
  By Mark Meadows 01-22-13
 */


int InSideThermostat = 0;
int OutSideThermostat =0;

void setup() {                
  // initialize the digital pin as an output.
  
  pinMode(4, OUTPUT); // NOT USED !
  pinMode(5, OUTPUT); // NOT USED !
  pinMode(6, OUTPUT); // Air Conditioner Relay
  pinMode(7, OUTPUT); // Fan Control Relay
  pinMode(8, INPUT);  // Inside Thermostat Input
  pinMode(9, INPUT);  // Outside Thermostat Input
  
  digitalWrite(4, LOW);     // Set Relays to default state
  digitalWrite(5, LOW);    // Set Relays to default state
  digitalWrite(6, HIGH);  // Set Relays to default state
  digitalWrite(7, HIGH); // Set Relays to default state




}

void loop() {
  
  InSideThermostat = digitalRead(8); // Read Inside Thermostat
  OutSideThermostat = digitalRead(9); // Read Outside Thermostat
  if(InSideThermostat == LOW && OutSideThermostat == LOW) {
    digitalWrite(7, LOW); 
    digitalWrite(6, HIGH);}
  if(InSideThermostat == HIGH) {
    digitalWrite(7, HIGH);
    digitalWrite(6, HIGH); }
  if(InSideThermostat == LOW && OutSideThermostat == HIGH) {
    digitalWrite(6, LOW);   
    digitalWrite(7, HIGH);}
    
  digitalWrite(13, HIGH);   // set the LED on
  delay(100);              // wait for a second
  digitalWrite(13 , LOW);    // set the LED off
  delay(10000);              // wait for a second to Debounce System
  

}
