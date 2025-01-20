# DevOps CRUD Application

This project is a full-stack CRUD application that demonstrates end-to-end development and deployment skills using modern technologies and practices.

## Project Structure

```
devops-crud-app
├── task-frontend                # Frontend application built with React
│   ├── src
│   │   ├── components      # React components for UI
│   │   ├── services        # Service files for API calls
│   │   ├── App.tsx        # Main component
│   │   └── index.tsx      # Entry point
│   ├── package.json        # Frontend dependencies and scripts
│   ├── tsconfig.json       # TypeScript configuration
│   └── README.md           # Frontend documentation
├── task-backend                 # Backend application built with Spring Boot
│   ├── src
│   │   ├── main
│   │   │   ├── java
│   │   │   │   └── com
│   │   │   │       └── example
│   │   │   │           └── crudapp
│   │   │   │               ├── controller  # Controller classes
│   │   │   │               ├── model       # Model classes
│   │   │   │               ├── repository   # Repository interfaces
│   │   │   │               └── service      # Service classes
│   │   │   └── resources
│   │   │       └── application.properties    # Configuration properties
│   ├── pom.xml             # Backend dependencies and build configuration
│   └── README.md           # Backend documentation
├── database                # Database setup
│   ├── init.sql           # SQL commands for initialization
│   └── README.md          # Database documentation
├── .github
│   └── workflows
│       └── ci-cd.yml      # CI/CD pipeline configuration
├── Dockerfile              # Docker image instructions
├── docker-compose.yml      # Multi-container Docker setup
├── terraform               # Infrastructure as Code (future feature)
│   ├── main.tf            # Main Terraform configuration
│   ├── variables.tf       # Input variables for Terraform
│   └── outputs.tf         # Output values for Terraform
└── README.md              # Overall project documentation
```

## Getting Started

### Prerequisites

- Docker
- Docker Compose
- Java (for backend)
- Node.js and npm (for frontend)
- Terraform (for infrastructure management)

### Setup Instructions

1. Clone the repository:
   ```
   git clone https://github.com/Rene-Mayhrem/task-devops-app.git
   cd devops-crud-app
   ```

2. Set up the database:
   - Navigate to the `database` directory and run the `init.sql` script to initialize the database.

3. Create `.env` file for database credentials:
   - Create a `.env` file in the root directory and add the following content:
   ```
   POSTGRES_USER=<YOUR_USERNAME>
   POSTGRES_PASSWORD=<YOUR PASSWORD>
   POSTGRES_DB=<YOUR POSTGRES DB NAME>
   SPRING_DATASOURCE_URL=jdbc:postgresql://database:5432/${POSTGRES_DB}
   SPRING_DATASOURCE_USERNAME=${POSTGRES_USER}
   SPRING_DATASOURCE_PASSWORD=${POSTGRES_PASSWORD}
   ```

4. Build and run the application:
   - Use Docker Compose to build and run the application:
   ```
   docker-compose up --build
   ```

5. Access the application:
   - Frontend: `http://localhost:3000`
   - Backend: `http://localhost:8080`

### CI/CD Pipeline

The CI/CD pipeline is defined in the `.github/workflows/ci-cd.yml` file. It automates the process of building, testing, and deploying the application.

### Contributing

Contributions are welcome! Please submit a pull request or open an issue for any suggestions or improvements.

### License

This project is licensed under the MIT License. See the LICENSE file for details.