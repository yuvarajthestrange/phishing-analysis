# URL Mismatch Check

This section examines URLs found in the phishing email samples to detect mismatches between the visible link text and the actual URL behind it, a common phishing tactic used to deceive recipients.

---

## 📧 apple_phish.eml

**URL Analysis:**

- Visible link text often shows official Apple URLs like `https://apple.com/account`.
- Actual hyperlink points to suspicious domains such as `http://secure-apple-login.com/verify`.
- The mismatch aims to trick users into clicking malicious links that appear legitimate.
- Use of HTTP instead of HTTPS in actual links increases risk.
- Domain names resemble official sites but use subtle typos or extra words.

---

## 📧 dhl_phish.eml

**URL Analysis:**

- Displayed URLs suggest official DHL tracking links like `https://dhl.com/track`.
- Real links direct users to domains like `http://dhl-delivery-status.com/confirm`.
- Links use IP addresses or unfamiliar domains instead of corporate domains.
- Presence of URL shortening services to hide destination URLs.
- Lack of SSL certificates (no HTTPS) on actual URLs is a red flag.

---

## 🔍 How to Check URL Mismatches

- Hover over links in emails to view the actual URL before clicking.
- Use online tools or browser extensions to analyze suspicious URLs.
- Compare the domain in the link with known official domains.
- Look out for misspellings, extra words, or unusual domain suffixes (.xyz, .info).

---

## 📊 Conclusion

URL mismatches are strong phishing indicators as attackers hide malicious destinations behind seemingly legitimate links. Always verify the actual URL before clicking any link in suspicious emails.

---

