# -Movie-Genome-Scores-11M-Optimization-
`R pipeline for memory-optimizing and filtering 11M Movie Genome Scores on a 4GB RAM system ($0 Cloud Cost).`


## 📌 Executive Summary
This project provides an optimized **Data Engineering & ETL Pipeline** in R built to clean, filter, and extract meaningful feature relevance scores from an **11 Million row Movie Genome Scores dataset**.

The pipeline was executed locally under strict physical hardware constraints (**4GB System RAM, Intel Core i3 @ 1.2GHz**) with **$0 Cloud Overhead**, avoiding Out-Of-Memory (OOM) crashes during multi-million row array transformations.

---

## 🛠️ Infrastructure & Hardware Constraints

* **Dataset Volume:** ~11 Million Movie Genome Feature Records
* **Processing Tools:** R Environment (`tidyverse`, `readr`)
* **Hardware Specs:** Intel Core i3 @ 1.2 GHz, 4 GB System RAM
* **Infrastructure Overhead:** $0.00 USD (Executed locally)
* **Code Review & Verification:** Reviewed via Google Gemini AI Framework

---

## ⚙️ Data Engineering Methodology

1. **Deduplication:** Applied `distinct()` early in the execution chain to remove duplicate rows and minimize unnecessary memory footprint.
2. **Type Casting & Memory Reduction:**
   * Downcasted `tagId` to **32-bit Integer (`as.integer`)** to save RAM allocation.
   * Converted `relevance` to standard double-precision numeric floating point (`as.numeric`).
3. **Threshold Filtering:** Retained highly relevant genome tag associations by applying cutoff conditions:
   * `tagId > 3`
   * `relevance > 0.023`
4. **Targeted Projection & Disk Streaming:** Selected key attributes (`tagId`, `relevance`) and streamed the optimized output directly to a clean CSV file.
