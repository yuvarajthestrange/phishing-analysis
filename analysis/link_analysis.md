# Link Analysis

This section reviews all URLs embedded within the phishing email samples to identify signs of malicious intent such as deceptive domain names, URL redirection, and use of IP addresses instead of domain names.

---

## 📧 apple_phish.eml

**Extracted Links:**

- `http://secure-apple.com/login`
- `http://verify.secure-apple.com/account`

**Analysis:**

- Domains use `secure-apple.com` which is not an official Apple domain. Official Apple URLs use `apple.com`.
- HTTP (not HTTPS) is used, increasing risk of interception.
- URLs attempt to mimic legitimate Apple subdomains but actually point to phishing domains.
- No use of URL shortening services found, but domains are clearly crafted for deception.

---

## 📧 dhl_phish.eml

**Extracted Links:**

- `http://dhl-express-support.com/track?parcel=12345`
- `http://192.168.1.100/confirm`

**Analysis:**

- The domain `dhl-express-support.com` is fraudulent and not owned by DHL.
- The second link uses a local IP address (`192.168.1.100`), which will not work publicly and is often used in phishing kits.
- Both links use HTTP without encryption.
- Presence of direct IP address link suggests hosting on a compromised or private server.

---

## 📊 Conclusion

Both phishing emails embed links that:
- Use suspicious or fake domains.
- Lack HTTPS encryption.
- Attempt to mimic legitimate brands through domain name manipulation.
- Include local or private IP addresses indicative of phishing infrastructure.

**Recommendation:** Users should hover over links before clicking and avoid URLs that do not match the official brand domain or lack HTTPS.

---

