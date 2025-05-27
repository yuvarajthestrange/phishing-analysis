# Header Analysis

This section analyzes the email headers of the provided phishing samples to detect suspicious patterns such as forged sender addresses, abnormal email routing, and unexpected mail servers.

---

## 📧 apple_phish.eml

**Key Header Fields:**

- **From:** Apple Support <support@secure-apple.com>
- **Return-Path:** <noreply@phishy-domain.com>
- **Received:** from unknown (HELO mail.fake-server.com) (192.168.1.15)
- **X-Mailer:** PHP/7.4
- **Date:** Tue, 21 May 2024 10:22:15 -0800

**Observations:**
- The "From" address impersonates Apple but the domain `secure-apple.com` is not an official Apple domain.
- Return-Path differs from "From" address, which is suspicious.
- Mail received from a private IP `192.168.1.15` — typical of spoofed emails.
- X-Mailer indicates PHP script-generated email, unusual for official Apple communications.

---

## 📧 dhl_phish.eml

**Key Header Fields:**

- **From:** DHL Express <tracking@dhl-express-support.com>
- **Return-Path:** <noreply@fraud-mail.net>
- **Received:** from unknown (HELO compromised-server.net) (10.0.0.25)
- **X-Originating-IP:** 185.24.232.99
- **Date:** Wed, 22 May 2024 15:45:00 -0800

**Observations:**
- "From" address mimics DHL but domain `dhl-express-support.com` is not legitimate.
- Return-Path differs from "From" address — red flag.
- Email originated from internal/private IP and uses a suspicious originating public IP `185.24.232.99`.
- X-Originating-IP is flagged in threat intelligence databases.

---

## 📊 Conclusion

Both emails exhibit classic phishing traits through:
- Mismatched "From" and "Return-Path" fields.
- Private/internal IP addresses in "Received" headers.
- Suspicious sending domains.
- Indicators of programmatically sent emails (PHP mailer).

**Recommendation:** Block these domains and report IPs to AbuseIPDB or similar services.
