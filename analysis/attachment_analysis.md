# Attachment Analysis

This section examines the attachments included in the phishing email samples to identify potentially harmful files, suspicious naming conventions, or payload delivery techniques.

---

## 📧 apple_phish.eml

**Attachments:**

- `invoice_12345.pdf`

**Analysis:**

- The PDF file claims to be an invoice but may contain embedded malicious scripts or links.
- Filename uses generic invoice naming, commonly used to trick recipients into opening.
- PDF attachments in phishing are often used to deliver malware or redirect to malicious sites.
- No digital signature present; the authenticity cannot be verified.
- Recommend scanning with antivirus tools before opening.

---

## 📧 dhl_phish.eml

**Attachments:**

- `delivery_details.docm`

**Analysis:**

- The `.docm` extension indicates a macro-enabled Word document, frequently used to deliver malware.
- Macros can execute malicious code when enabled, posing a high risk.
- Filename uses delivery-related terminology to entice the recipient to open.
- This type of attachment is a common vector for ransomware and credential theft.
- Always disable macros and scan attachments thoroughly.

---

## 📊 Conclusion

Attachments in these phishing samples show typical patterns used by attackers:
- Use of invoice or delivery-themed filenames to appear legitimate.
- Inclusion of potentially dangerous file types like `.pdf` and `.docm`.
- High risk of embedded malicious content through macros or scripts.

**Recommendation:** Do not open attachments unless verified; scan all attachments with updated security software and disable macros by default.

---

