# Dewit

> **A high-performance, self-hosted task manager for privacy-conscious teams.**

Dewit is a FOSS (Free and Open Source Software) task management orchestration tool built with **Flutter** and **PocketBase**. It is designed for teams and individuals who need to manage tasks either locally or across internal networks without the hassle of relying on third-party cloud providers.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)
![PocketBase](https://img.shields.io/badge/PocketBase-%23000000.svg?style=flat&logo=PocketBase&logoColor=white)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Features

- **Privacy First:** Data never leaves your network. 
- **Hybrid Storage:** Personal tasks stay in a local SQLite bucket; team tasks sync to your PocketBase instance.
- **Self-Hosted:** Deploy the entire backend in 60 seconds using a single binary or Docker.
- **Offline Tolerant:** Built-in sync engine handles spotty VPN connections gracefully.
- **Clean UI:** High-performance desktop and mobile experience.

## Quick Start

### 1. Prerequisites

- Flutter SDK (Stable)
- Docker & Docker Compose (for the backend)

### 2. Run the app

```bash
flutter run
```

- [ ] (To-Do: Create backend and add instructions to run it)

## Tech Stack

- Frontend: Flutter (Dart)
- Backend: PocketBase (Go/SQLite)

## License

Distributed under the AGPL-3.0 License. See [LICENSE](LICENSE) for more information.
