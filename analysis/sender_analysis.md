# 📧 Sender Analysis

This document presents an analysis of the sender details from the two provided phishing email samples.

---

## 📂 Sample: `apple_phish.eml`

- **From Address:** `support@apple-security-alert.com`
- **Display Name:** `Apple Support`
- **Reply-To Address:** `support@apple-security-alert.com`
- **Domain Legitimacy:** ❌ Suspicious domain, not an official Apple domain.
- **Notes:**
  - Official Apple emails are typically from `@apple.com`.
  - The domain `apple-security-alert.com` is unrelated to Apple Inc.
  - Potentially using a lookalike domain for phishing attempts.

---

## 📂 Sample: `dhl_phish.eml`

- **From Address:** `notifications@dhl-delivery-service.com`
- **Display Name:** `DHL Express`
- **Reply-To Address:** `notifications@dhl-delivery-service.com`
- **Domain Legitimacy:** ❌ Suspicious domain, not associated with official DHL.
- **Notes:**
  - Legitimate DHL emails originate from `@dhl.com`.
  - The domain `dhl-delivery-service.com` is a likely imposter domain.

---

## 📌 Summary

Both emails use deceptive sender addresses mimicking trusted brands:
- **Lookalike domains**
- **Unverified, non-official addresses**
- Designed to exploit user trust by mimicking brand names in sender addresses and display names.

**Recommendation:**  
Emails from unknown domains resembling well-known brands should be treated as suspicious and verified through official channels before engagement.
