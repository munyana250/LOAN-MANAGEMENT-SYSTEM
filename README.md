# 🏦 Bank of Kigali — Advanced Loan Management System
### OOP Java Assignment | Wednesday Group

---

## 📋 Project Description
A secure and scalable Loan Management System built using
core Object-Oriented Programming principles in Java.

---

## 🏗️ Project Structure

```
src/loanmanagementsystem/
│
├── contract/
│   └── Payable.java          → Interface (processPayment, remainingBalance, receipt)
│
├── model/
│   ├── Loans.java            → Abstract class (8 abstract methods)
│   ├── LoanManager.java      → extends Loan + implements Payable
│   ├── PersonalLoan.java     → subclass (loanPurpose, collateral)
│   ├── HomeLoan.java         → subclass (propertyValue, location)
│   ├── CarLoan.java          → subclass (carValue, licensePlate)
│   ├── BusinessLoan.java     → subclass (businessName, collateral)
│   ├── StudentLoan.java      → subclass (university, program)
│   ├── AgriculturalLoan.java → subclass (farmSize, cropType)
│   ├── Customers.java        → Customer entity
│   └── Repayment.java        → Payment records
│
├── service/
│   └── LoanFactory.java      → Factory pattern (creates loan objects)
│
├── util/
│   └── InputValidator.java   → Validates all user inputs
│
└── ui/
    ├── MenuHelpers.java       → All menu methods + business logic
    └── Main.java              → Entry point (main method)
```

---

## 💡 OOP Concepts Demonstrated

| Concept | Where |
|---|---|
| **Encapsulation** | Private attributes + getters/setters in every class |
| **Abstraction** | `Loans.java` abstract class with 8 abstract methods |
| **Interface** | `Payable.java` with 3 payment methods |
| **Inheritance** | 6 subclasses extend `LoanManager` |
| **Polymorphism** | `LoanFactory` returns subclass as `LoanManager` reference |
| **Constructors** | Default + Parameterized in every class |
| **Method Overriding** | `toString()`, `checkEligibility()`, `calculateInterest()` |

---

## 🚀 How to Run

### Option 1 — Run JAR directly
```bash
java -jar LoanSystem.jar
```

### Option 2 — Run with Docker
```bash
# Build the image
docker build -t loansystem .

# Run interactively (required for console input)
docker run -it loansystem
```

### Option 3 — Compile and run from source
```bash
# Compile
javac -d bin src/loanmanagementsystem/**/*.java

# Create JAR
jar cfm LoanSystem.jar manifest.txt -C bin .

# Run
java -jar LoanSystem.jar
```

---

## 📱 System Features

```
1. Customer Registration    → Register new bank customers
2. Loan Application         → Apply for 6 types of loans
3. Approve / Reject Loan    → Officer approves or rejects
4. Make a Payment           → Process loan repayments
5. View Loan Details        → Full loan report
6. View Customer Details    → Customer information
7. View Repayment History   → Payment records
8. View All Loans           → All loans in the system
0. Exit
```

---

## ✅ Validation Features
- Empty input detection
- Invalid ID formats (CUS-XXXXX, LN-XXXXX)
- Rwanda phone number format (+250XXXXXXXXX)
- National ID format (16 digits)
- Duplicate ID prevention
- Negative number rejection
- Invalid loan type handling

---

## 👨‍💻 Technologies Used
- Java 21
- Docker (openjdk:21-jdk-slim)
- OOP Design Patterns (Factory Pattern)
