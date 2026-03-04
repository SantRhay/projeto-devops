# 🚀 Terraform AWS Infrastructure Project

Este projeto demonstra a criação e gerenciamento de infraestrutura na *AWS utilizando Terraform, seguindo boas práticas de **Infrastructure as Code (IaC)* e integração com *GitHub*.

O objetivo é provisionar recursos na AWS de forma automatizada, versionada e reproduzível.

---

# 🧰 Tecnologias utilizadas

- Terraform
- AWS
- EC2
- S3
- DynamoDB
- Git
- GitHub
- Linux

---

# 📦 Infraestrutura provisionada

Este projeto cria os seguintes recursos na AWS:

- Instância *EC2*
- Bucket *S3* para armazenar o Terraform State
- *DynamoDB* para controle de lock do estado

---

# 🏗 Arquitetura

O Terraform provisiona infraestrutura na AWS utilizando backend remoto para armazenar o estado.

Arquitetura:

Developer
   ↓
GitHub Repository
   ↓
Terraform
   ↓
AWS Infrastructure
   ├── EC2 Instance
   ├── S3 (Terraform State)
   └── DynamoDB (State Lock)

---

# 📁 Estrutura do projeto


projeto-devops
│
├── backend.tf
├── main.tf
├── s3.tf
├── README.md
└── .gitignore


---

# ⚙️ Configuração do Backend

O Terraform está configurado para utilizar *S3 como backend remoto* e *DynamoDB para state locking*.

Isso evita conflitos quando múltiplos usuários executam o Terraform.

---

# 🚀 Como executar o projeto

### 1️⃣ Clonar repositório

bash
git clone https://github.com/SEU-USUARIO/projeto-devops.git
cd projeto-devops


---

### 2️⃣ Inicializar Terraform

bash
terraform init


---

### 3️⃣ Validar configuração

bash
terraform validate


---

### 4️⃣ Ver plano de execução

bash
terraform plan


---

### 5️⃣ Aplicar infraestrutura

bash
terraform apply


---

# 🔒 Boas práticas utilizadas

- Terraform State remoto
- State Lock com DynamoDB
- Versionamento com Git
- Arquivos sensíveis ignorados com .gitignore

---

# 📚 Próximas melhorias

- Estrutura Terraform com *Modules*
- Ambientes *dev e prod*
- Deploy automático via *CI/CD*
- Implementação de *VPC customizada*
