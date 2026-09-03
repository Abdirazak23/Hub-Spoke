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



├── .github/
│   └── workflows/
│       └── terraform.yml      # Pipeline executing on push to main
├── main.tf                    # Hub VNet, Spoke VNet, Peering & Subnets
├── vpn.tf                     # Active-Active Virtual Network Gateway & Connections
├── variables.tf               # Input variables (IP ranges, locations, naming)
├── outputs.tf                 # Gateway Public IPs and VNet IDs
└── provider.tf                # Terraform version & Azure provider settings
aa