void main() {
  callbackDemo(onCancel: () { print("Cancelled");}, 
  onResend: () { print("Resend"); },
  onSuccess: (otp) { print(otp); });



}

void callbackDemo({required onSuccess(String otp), onCancel, onResend}) {
  onCancel();
  onResend();
  onSuccess("123456");



}


