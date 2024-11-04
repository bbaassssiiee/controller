# Ansible Controller with SemaphoreUI

This project provides a development environment for deploying an Ansible Controller with SemaphoreUI. In this setup, Semaphore runs within a Docker container, while other components, such as PostgreSQL and Nginx, run directly on the host system.

## Contents

- [Overview](#overview)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project automates the deployment of an Ansible Controller featuring a web-based interface through SemaphoreUI. Semaphore runs within a Docker container, while components like PostgreSQL and Nginx operate directly on the host system.

## Installation

Follow these steps to set up the environment:

1. **Prerequisites**:
   **Note**: The `inventory/local` configuration is suitable for direct deployment on systems like Red Hat, AlmaLinux, or Rocky Linux. In this setup, Vagrant and VirtualBox are not required.

   - Ansible, installed on your local machine.
   - [VirtualBox](https://www.virtualbox.org/), installed on your laptop.
   - [Vagrant](https://www.vagrantup.com/) installed on your laptop.

   Copy the relevant Vagrantfile.* to Vagrantfile.

2. **Clone the repository**:
   ```bash
   git clone https://github.com/bbaassssiiee/controller.git
   cd controller
   ```

3. **Set environment variables**:
   Define the database password by exporting the `DB_PASS` environment variable:
   ```bash
   export DB_PASS=your_database_password
   ```

4. **Run the playbook**:
   Execute the Ansible playbook to provision the environment:
   ```bash
   ansible-playbook provision.yml -i inventory/local
   ```


## Configuration

- **SSL Certificates**: By default, self-signed certificates are used. For production environments, it is recommended to implement certificates from a trusted certificate authority.

- **Database Password**: Ensure that the `DB_PASS` environment variable is set with a strong password before running the playbook.

## Usage

After successful installation, SemaphoreUI is accessible via your web browser at the address configured in your `/etc/hosts` file.

## Contributing

Contributions are welcome! Feel free to submit pull requests or open issues for suggestions and improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.:x
