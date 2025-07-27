class createUserReq {
  final String fullname;
  final String email;
  final String password;

  createUserReq({
        required this.fullname,
        required this.email,
        required this.password
      });
}