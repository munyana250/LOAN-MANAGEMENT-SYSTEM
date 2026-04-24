FROM openjdk:25-jdk-slim

WORKDIR /app

COPY LoanSystem.jar .

CMD ["java", "-jar", "LoanSystem.jar"]