# 🚀 End-to-End API Performance & Load Testing - Restful Booker

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


<img width="1732" height="960" alt="image" src="https://github.com/user-attachments/assets/665c85c1-e455-457a-a144-eb3be458391b" />




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

## 📊 Performance Test Results & Key Metrics
* Execution Success Rate: 100% (0.00% Error Rate across all CRUD endpoints)
* Protocol Metrics: All response codes verified with HTTP 200 OK

---

👤 Author : Ainul Idham
