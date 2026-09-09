# 🚀 E2E Performance Testing - Apache JMeter + Report
![JMeter](https://img.shields.io/badge/Apache%20JMeter-v5.6.3-D22128?style=for-the-badge&logo=apachejmeter&logoColor=white)
![Test Type](https://img.shields.io/badge/Test%20Type-Performance%20%26%20Load-blue?style=for-the-badge)
![API](https://img.shields.io/badge/API-Restful--Booker-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-GPL--3.0-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Passed%20(100%25)-brightgreen?style=for-the-badge)

An industry-standard performance test automation suite built with **Apache JMeter**, implementing full CRUD lifecycle testing with dynamic authentication token handling, data-driven parameterization, and automated HTML Dashboard report generation.

---

## 📌 Executive Summary

This project evaluates the baseline performance, latency, and reliability of the **[Restful Booker API](https://restful-booker.herokuapp.com/apidoc/index.html)** under automated request sequences. Instead of basic single-endpoint benchmarking, this suite executes a complete stateful user journey:

$$\text{Auth Token Generation} \rightarrow \text{Create Booking} \rightarrow \text{Get Booking Details} \rightarrow \text{Update Booking (PUT)} \rightarrow \text{Partial Update (PATCH)} \rightarrow \text{Delete Booking}$$

---

## 🛠️ Tech Stack & Architecture

* **Performance Tool:** Apache JMeter 5.6.3
* **Script Type:** JMeter Test Plan (`.jmx`)
* **Execution Mode:** Non-GUI (CLI Mode) for accurate performance metrics
* **Data Parameterization:** CSV Data Set Config (Dynamic JSON payload injection)
* **Correlation Mechanism:** JMeter JSON Extractor (`authToken`, `bookingId`)
* **Reporting:** Automated HTML Dashboard Generator (`.jtl` logs parsing)

/n
Here's the demo link: **[Demo Testing](https://youtu.be/HudA7XuNnkI)** /n



<img width="1732" height="960" alt="Screenshot 2026-09-09 195201" src="https://github.com/user-attachments/assets/22911a45-66c4-4481-bcea-e6a366a63bc0" />
<img width="1727" height="866" alt="Screenshot 2026-09-09 200040" src="https://github.com/user-attachments/assets/d623e7a7-ccd8-45d3-a476-cba43e7dc03a" />

--- 

## 📊 Performance Test Results & Key Metrics
* Execution Success Rate: 100% (0.00% Error Rate across all CRUD endpoints)
* Protocol Metrics: All response codes verified with HTTP 200 OK

<img width="1707" height="962" alt="Screenshot 2026-09-09 200532" src="https://github.com/user-attachments/assets/ce9f9402-dddb-44ec-8049-080b330e8814" />
<img width="1402" height="618" alt="image" src="https://github.com/user-attachments/assets/13e72a6d-4e63-4848-9283-20c3d7fb4a3e" />
<img width="1432" height="648" alt="Screenshot 2026-09-09 200743" src="https://github.com/user-attachments/assets/5bc87e95-596e-43d1-b59b-37837a4beaca" />

---

## ⚡ CLI Execution Strategy
To eliminate GUI overhead during performance runs, tests are executed purely via CLI:

1. Execute Load Test & Generate HTML Report
```
jmeter -n -t "restful_booker_crud.jmx" -l "result.jtl" -e -o "report"
```

2. Generate Report from Existing Log (.jtl)
```
jmeter -g "result.jtl" -o "report"
```

---

👤 Author : Ainul Idham
