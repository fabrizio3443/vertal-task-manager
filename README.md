# Vertal

> **A high-performance, self-hosted task manager for privacy-conscious teams.**

Vertal is a FOSS (Free and Open Source Software) task management orchestration tool built with **Flutter**, **Spring Boot** **SQLite** and **PostgreSQL**. It is designed for teams and individuals who need to manage tasks either locally or across internal networks without the hassle of relying on third-party cloud providers.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-%236DB33F.svg?style=flat&logo=springboot&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-%2307405E.svg?style=flat&logo=sqlite&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-%23316192.svg?style=flat&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-%232496ED.svg?style=flat&logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)]

(https://opensource.org/licenses/Apache-2.0)

## Features

- **Privacy First:** Data never leaves your network. 
- **Hybrid Storage:** Personal tasks stay in a local SQLite bucket; team tasks sync to your Spring Boot instance.
- **Self-Hosted:** Deploy the entire backend in 60 seconds using Docker Compose.
- **Offline Tolerant:** Built-in sync engine handles spotty VPN connections gracefully.
- **Clean UI:** High-performance desktop and mobile experience.

## Quick Start

### 1. Prerequisites

- Flutter SDK (Stable)
- Docker & Docker Compose (for backend deployment)

### 2. Run the app

```bash
flutter run
```

- [ ] (To-Do: Create backend and add instructions to run it)

## Tech Stack

- Frontend: Flutter (Dart)
- Backend: Spring Boot (Java)
- Database: PostgreSQL (self-hosted server), SQLite (local)
- Container tool: Docker

## License

Distributed under the Apache 2.0 License. See [LICENSE](LICENSE) for more information.
