# ⚡ Azure Hub-and-Spoke Infrastructure with Active-Active VPN

An enterprise-grade, fully automated deployment of an Azure Hub-and-Spoke Network Topology featuring Active-Active Site-to-Site VPN Connectivity. Powered by Terraform and continuously deployed via GitHub Actions workflows triggering on direct pushes to main.

---

## 🏗️ Architecture Overview

This project provisions a resilient, enterprise-ready cloud network design separating shared services from isolated application workloads.

```text
 ┌────────────────────────────────────────────────────────────────────────┐
 │                              ON-PREMISES                               │
 └───────────────────────────────────┬────────────────────────────────────┘
                                     │
                    ┌────────────────┴────────────────┐
                    │  Dual Active-Active IPsec Tunnels│
                    └────────────────┬────────────────┘
                                     │
 ┌───────────────────────────────────▼────────────────────────────────────┐
 │  AZURE HUB VNET (vnet-hub)                                             │
 │  ┌──────────────────────────────────────────────────────────────────┐  │
 │  │ GatewaySubnet                                                    │  │
 │  │  ├── Azure Virtual Network Gateway (Active Instance 1)           │  │
 │  │  └── Azure Virtual Network Gateway (Active Instance 2)           │  │
 │  └──────────────────────────────────────────────────────────────────┘  │
 └───────────────────────────────────┬────────────────────────────────────┘
                                     │ (Bidirectional VNet Peering)
 ┌───────────────────────────────────▼────────────────────────────────────┐
 │  AZURE SPOKE VNET (vnet-spoke-workloads)                               │
 │  ┌──────────────────────────────────────────────────────────────────┐  │
 │  │ snet-app (Workload Subnet)                                       │  │
 │  └──────────────────────────────────────────────────────────────────┘  │
 └────────────────────────────────────────────────────────────────────────┘


<<<<<<< HEAD
=======

<<<<<<< HEAD
=======
>>>>>>> 10748f5 (new folders setup)
>>>>>>> temp-work
azure-infrastructure-live/
├── global/
│   └── iam/
│       ├── main.tf                  # Global Entra ID groups, enterprise roles, policies
│       ├── variables.tf             # Global IAM input variables
│       ├── global.auto.tfvars       # Auto-loaded global values (e.g., AD Tenant/Subscription IDs)
│       ├── providers.tf             # Backend state pointing to global.tfstate
│       ├── outputs.tf               # Exports global Identity IDs/Principal IDs
│       └── README.md
│
└── environments/
    ├── dev/
    │   ├── main.tf                  # Orchestrates network, compute, app-service modules
    │   ├── variables.tf             # Declarations for Dev parameters
    │   ├── dev.auto.tfvars          # Auto-loaded Dev variables (10.0.0.0/16 Hub, 10.0.1.0/16 Spoke)
    │   ├── providers.tf             # Backend state pointing to dev.tfstate
    │   ├── outputs.tf               # Root outputs for Dev
    │   └── README.md
    │
    ├── pre-prod/
    │   ├── main.tf                  # Orchestrates pre-prod architecture
    │   ├── variables.tf             # Declarations for Pre-Prod parameters
    │   ├── pre-prod.auto.tfvars     # Auto-loaded Pre-Prod variables (10.100.0.0/16 space)
    │   ├── providers.tf             # Backend state pointing to preprod.tfstate
    │   ├── outputs.tf               # Root outputs for Pre-Prod
    │   └── README.md
    │
    └── prod/
        ├── main.tf                  # Orchestrates Prod architecture
        ├── variables.tf             # Declarations for Prod parameters
        ├── prod.auto.tfvars         # Auto-loaded Prod variables (10.200.0.0/16 space)
        ├── providers.tf             # Backend state pointing to prod.tfstate
        ├── outputs.tf               # Root outputs for Prod
<<<<<<< HEAD
        └── README.md
=======
<<<<<<< HEAD
        └── README.md
=======
        └── README.md
>>>>>>> 10748f5 (new folders setup)
>>>>>>> temp-workg
