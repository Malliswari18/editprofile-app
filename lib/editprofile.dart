import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool isObscurePassword = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  String? selectedCountry;
  String? profileImageUrl;

  final List<String> countries = ['India', 'USA', 'Canada', 'UK', 'Australia'];

  @override
  void initState() {
    super.initState();
    loadProfileData();
  }

  Future<void> loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString('name') ?? "";
      emailController.text = prefs.getString('email') ?? "";
      mobileController.text = prefs.getString('mobile') ?? "";
      selectedCountry = prefs.getString('country') ?? countries[0];
      profileImageUrl = prefs.getString('profileImage');
    });

    print("Loaded Profile Data:");
    print("Name: ${nameController.text}");
    print("Email: ${emailController.text}");
    print("Mobile: ${mobileController.text}");
    print("Country: $selectedCountry");
  }

  Future<void> saveProfileData() async {
    if (!validateInputs()) return;

    SharedPreferences prefs = await SharedPreferences.getInstance();

    print("Saving profile data...");
    print("Name: ${nameController.text}");
    print("Email: ${emailController.text}");
    print("Mobile: ${mobileController.text}");
    print("Country: $selectedCountry");

    await prefs.setString('name', nameController.text);
    await prefs.setString('email', emailController.text);
    await prefs.setString('mobile', mobileController.text);
    await prefs.setString('country', selectedCountry ?? countries[0]);

    if (profileImageUrl != null) {
      await prefs.setString('profileImage', profileImageUrl!);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Profile saved successfully!")),
    );
  }

  bool validateInputs() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        mobileController.text.isEmpty ||
        passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("All fields are required!")),
      );
      return false;
    }
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(emailController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enter a valid email!")),
      );
      return false;
    }
    if (!RegExp(r'^[0-9]{10}$').hasMatch(mobileController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enter a valid 10-digit mobile number!")),
      );
      return false;
    }
    return true;
  }

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        profileImageUrl = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Center(child: Text("Edit Profile")),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.pink,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.yellow),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: profileImageUrl != null
                          ? FileImage(File(profileImageUrl!))
                          : const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCBBgfoO8I5tj-tawrjzeFarrRlxTJeY0K1w&s",
                            ) as ImageProvider,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: pickImage,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4, color: Colors.white),
                            color: Colors.blue,
                          ),
                          child:
                              const Icon(Icons.camera_alt, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              buildTextField("Full Name", nameController, false),
              buildTextField("Email", emailController, false),
              buildTextField("Password", passwordController, true),
              buildTextField("Mobile No", mobileController, false),
              DropdownButtonFormField(
                value: selectedCountry,
                decoration: const InputDecoration(labelText: "Country"),
                items: countries.map((country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value as String?;
                  });
                },
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("CANCEL",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.black)),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: saveProfileData,
                    child: const Text("SUBMIT",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTextField(
    String labelText, TextEditingController controller, bool isPassword) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        suffixIcon: isPassword
            ? IconButton(
                icon: const Icon(Icons.remove_red_eye),
                onPressed: () {},
              )
            : null,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    ),
  );
}
