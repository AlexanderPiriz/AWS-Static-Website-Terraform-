AWS‑Static‑Website‑Terraform  
A fully modular, production‑grade Terraform project that deploys a secure static website on AWS using best‑practice architecture. The stack includes:

Private S3 bucket (no public access)

CloudFront CDN with Origin Access Control (OAC)

ACM TLS certificates for HTTPS

Route53 DNS with automatic validation

Strict HTTPS‑only delivery

Modular Terraform structure for scalability and reuse

This project demonstrates real‑world cloud engineering skills: infrastructure as code, secure-by-default design, AWS networking fundamentals, and clean module composition.

```mermaid
flowchart TD

    User((User))
    CF[CloudFront CDN<br/>+ OAC]
    S3[(Private S3 Bucket)]
    ACM[(ACM Certificate)]
    DNS[Route53 DNS]

    User -->|HTTPS| CF
    CF -->|Signed Request| S3
    DNS --> CF
    ACM --> CF

