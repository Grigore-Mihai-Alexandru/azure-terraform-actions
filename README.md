# Terraform + GitHub Actions Demo (Azure Student)

Acest proiect demonstrează cum poți crea automat resurse în Microsoft Azure folosind **Terraform** și **GitHub Actions**.

> ⚠️ Acest workflow este gândit pentru scopuri educaționale. După rulare, toate resursele sunt distruse automat pentru a evita costurile suplimentare din creditul de student.

---

## 🔧 Ce face acest workflow (`terraform-apply.yaml`)

1. Se declanșează automat când faci `push` pe branch-ul `git_tf` sau manual.
2. Rulează următoarele comenzi în directorul `terraform/`:
   - `terraform init`
   - `terraform plan`
   - `terraform apply -auto-approve`
   - `terraform destroy -auto-approve`

---

## 📦 Resurse create

- Resource Group
- Virtual Network + Subnet
- 2x Virtual Machines Ubuntu
- Public IPs
- Network Security Group
- Test automat: VM0 face `ping` către VM1 prin `remote-exec`

---

## 🔐 Secrete necesare (în GitHub → Repo → Settings → Secrets → Actions)

| Nume secret              | Descriere                          |
|--------------------------|------------------------------------|
| `ARM_CLIENT_ID`          | Client ID din Azure AD App         |
| `ARM_CLIENT_SECRET`      | Secretul App Registration          |
| `ARM_TENANT_ID`          | Tenant ID din Azure                |
| `ARM_SUBSCRIPTION_ID`    | Subscription ID din Azure          |
| `TF_VAR_admin_password`  | Parolă VM (folosită în Terraform)  |

---

## ▶️ Cum rulezi

### Metoda 1: Automat
Fă `push` pe branch-ul `ping-vms`.

### Metoda 2: Manual
Mergi în tab-ul **Actions**, selectează workflow-ul „Terraform Apply and Destroy Workflow” și apasă **Run workflow**.

---

## ✅ Rezultat

- Workflow-ul construiește totul în Azure.
- Testează conectivitatea între VM-uri.
- Apoi șterge toate resursele automat pentru a nu consuma din bugetul Azure Student.

---

## 🧼 Cleanup garantat

Am inclus comanda `terraform destroy -auto-approve` în workflow, astfel că toate resursele sunt eliminate chiar dacă `terraform apply` eșuează.

---
