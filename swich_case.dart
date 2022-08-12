
void main() { 

//    var command = 'OPEN';
// switch (command) {
//   case 'OPEN':
//     print("open");
//     // ERROR: Missing break
//     break;

//   case 'CLOSED':
//     print("close");
//     break;
// }

var command = 'CLOSED';
switch (command) {
  case 'CLOSED': // Empty case falls through.
  case 'NOW_CLOSED':
    print("close");
    continue label_for_coninue;      //It prints the close and continue to the label we given 

  label_for_coninue:
  case 'Last':
    print("Last case");
    break;
}
}  

