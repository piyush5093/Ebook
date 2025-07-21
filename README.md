# 📚 E-Book Stack – Java-Based Digital Library Manager

![](https://github.com/piyush5093/Ebook/blob/main/Screenshot%202025-07-21%20093247.png)

🚀 **E-Book Stack** is a dynamic and responsive web application that allows users to manage their digital e-book library efficiently. Designed for book lovers and tech enthusiasts, it helps users to add, organize, and interact with their personal collection of books — all through a clean and modern interface.

Built using **Java Technologies** like **JSP**, **Servlets**, and **JDBC**, this project demonstrates full-stack Java development with proper user authentication, database handling, and CRUD operations.

---

## 🎯 Project Goals

- ✅ Build a fully functional Java web application for managing ebooks
- ✅ Demonstrate MVC architecture using JSP + Servlets
- ✅ Apply JDBC for efficient database operations
- ✅ Create a clean, responsive UI for a smooth user experience
- ✅ Make the app scalable for future improvements

---

## 🧰 Tech Stack

| Layer        | Technology              |
|--------------|--------------------------|
| Frontend     | HTML, CSS, Bootstrap     |
| Backend      | JSP, Servlets (Java EE)  |
| Database     | MySQL, JDBC              |
| Server       | Apache Tomcat            |
| IDE          | Eclipse / IntelliJ IDEA  |

---

## 🌟 Key Features

### 🔐 User Authentication
- Register and login securely
- Session management to restrict unauthorized access

### 📘 Book Management
- Add new e-books (title, author, genre, and file)
- View book list with sorting/filtering
- Edit or delete existing books

### 🔍 Search & Filter
- Search books by title, author, or genre
- Clean UI for easier navigation and discovery

### 💻 Responsive UI
- Mobile-friendly layout using Bootstrap
- Smooth user interaction across devices

---

## 🎬 Project Demo

🎥 **Watch the Video Demo**:  
[👉 Click to Watch on Google Drive / YouTube](https://drive.google.com/file/d/1cDrEEJcaPLal2iLyVIM6J79rQ5NhR01j/view?usp=drive_link)  

---



---

## 🛠️ Installation & Setup

### 📦 Prerequisites

- Java JDK 8 or above
- Apache Tomcat (v9+)
- MySQL Server
- Eclipse / IntelliJ IDEA (with Dynamic Web Module support)

### 🧪 Setup Instructions
## 🚀 Getting Started

### 1. Import Project
- Open your IDE.
- Import as a **Dynamic Web Project**.

### 2. Configure Database
- Create a MySQL database, e.g., `ebook_db`.
- Import the SQL schema (provided in `/db/ebook_schema.sql`).
- Update the DB credentials in `DBConnection.java`:


### 3. Deploy on Tomcat
- Right-click project → Run As → Run on Server (Tomcat).
- App should now be running at: [http://localhost:8080/ebook-stack/](http://localhost:8080/ebook-stack/)

---

## 📂 Folder Structure

```
ebook-stack/
│
├── src/
│   ├── com.ebook.controller/
│   ├── com.ebook.dao/
│   └── com.ebook.model/
│
├── WebContent/
│   ├── css/
│   ├── js/
│   ├── images/
│   ├── index.jsp
│   └── dashboard.jsp
│
├── DBConnection.java
├── README.md
└── ebook_schema.sql
```

---

## 💡 Future Enhancements
- Cloud file storage for uploaded PDFs.
- Dark/light mode for better readability.
- Bookmark and highlight feature.
- Admin dashboard to monitor users and books.

---

## 🤝 Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss.

---

## 📬 Contact
- 📧 Email: pp3620920@gmail.com
- 🔗 LinkedIn:www.linkedin.com/in/piyush-patil-292842279

---

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

---

