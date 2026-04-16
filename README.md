# 🚀 Static Website Deployment on AWS S3 using Terraform

## 📌 Project Overview
This project demonstrates how to deploy a static website on an AWS S3 bucket using Terraform. The goal is to automate infrastructure provisioning and host a simple static website in a scalable and cost-effective way.

---

## 🛠️ Tech Stack
- Terraform (Infrastructure as Code)
- AWS S3 (Static Website Hosting)
- HTML / CSS (Frontend)

---

## 📂 Project Structure

.
├── index.html
├── error.html
├── profile.png
├── main.tf
├── provider.tf
├── variables.tf
├── output.tf
└── .gitignore


---

## ⚙️ What This Project Does
- Creates an S3 bucket using Terraform  
- Configures bucket for static website hosting  
- Uploads website files (HTML, images)  
- Sets public access permissions  
- Outputs the website URL after deployment  

---

## 🚀 How to Run This Project

### 1. Clone the Repository

git clone https://github.com/your-username/terraform-static-website.git

cd terraform-static-website


### 2. Initialize Terraform

terraform init


### 3. Preview the Changes

terraform plan


### 4. Apply the Configuration

terraform apply


Type `yes` when prompted.

---

## 🌐 Output
After successful deployment, Terraform will provide a website endpoint URL.  
Open it in your browser to view the hosted static website.
  

---

## 👨‍💻 Author
GitHub: https://github.com/yt-anas

---

## ⭐ Show Your Support
If you found this project helpful, give it a ⭐ on GitHub!
