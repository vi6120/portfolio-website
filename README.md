# Vikas Ramaswamy | Data & AI Engineer Portfolio

Personal portfolio website showcasing production data pipelines, AI applications, and analytics projects built across Germany and India.

**Live site** → [vi6120.github.io/portfolio-website](https://vi6120.github.io/portfolio-website/)

---

## Projects

### 1. SupplyIQ — Supply Chain Analytics Platform
- **Live demo**: [supplyiq-bice.vercel.app](https://supplyiq-bice.vercel.app) · **API docs**: [supplyiq-4tkt.onrender.com/docs](https://supplyiq-4tkt.onrender.com/docs)
- **Stack**: Python · dbt · DuckDB · Apache Airflow · FastAPI · React · Groq / LLaMA 3.3 70B
- **What it does**: End-to-end production pipeline simulating SAP MM/SD/WM operations. Airflow orchestrates daily ingestion; 16 dbt models across bronze/silver/gold layers; 14 FastAPI endpoints; 8-page React dashboard; AI advisor grounded in live gold-layer data via LangGraph.

### 2. PR Review Bot — Automated GitHub Code Reviews
- **Repo**: [github.com/vi6120/pr-review-bot](https://github.com/vi6120/pr-review-bot)
- **Stack**: LangGraph · LLaMA 3.3 70B · FastAPI · Supabase (pgvector) · Railway
- **What it does**: GitHub App that reviews every PR using 3 parallel AI agents (code quality, security, performance). Features @mention multi-turn chat, per-repo memory via pgvector, and zero-configuration install. Runs at $0/month on free tiers.

### 3. Stock Analyzer & Investment Predictor
- **Live demo**: [my-stock-analyzer.streamlit.app](https://my-stock-analyzer.streamlit.app)
- **Stack**: Python · Random Forest · yfinance · VADER Sentiment · Streamlit · Flask
- **What it does**: Real-time stock analysis combining ML predictions, technical indicators (RSI, MACD, moving averages), and dual sentiment analysis into a 9-point scoring system producing STRONG BUY / SELL recommendations.

### 4. Customer Churn Analysis & Prediction
- **Live demo**: [my-customer-churn-analysis.streamlit.app](https://my-customer-churn-analysis.streamlit.app)
- **Stack**: Python · scikit-learn · XGBoost · Streamlit · Jupyter
- **What it does**: End-to-end ML pipeline comparing Logistic Regression, Random Forest, and XGBoost for churn prediction. Full EDA notebooks, interactive Streamlit dashboard, and actionable retention recommendations.

### 5. Supply Chain & Inventory Optimization Dashboard
- **Live demo**: [supply-chain-inventory-optimization.streamlit.app](https://supply-chain-inventory-optimization.streamlit.app)
- **Stack**: Python · Streamlit · Prophet · ARIMA · Plotly · scikit-learn
- **What it does**: Demand forecasting dashboard with service-level driven safety stock planning, interactive cost-vs-service trade-off slider, multi-scenario comparison (85%–99.9%), and automated reorder alerts.

### 6. Financial Analytics Dashboard
- **Live demo**: [my-finance-overview.streamlit.app](https://my-finance-overview.streamlit.app)
- **Stack**: Python · Streamlit · yfinance · Plotly · Prophet · ARIMA
- **What it does**: Professional-grade financial analysis with live stock data, technical indicators (RSI, MACD, Bollinger Bands), portfolio tracking, and price forecasting.

### 7. Pneumonia Detection from Chest X-Rays
- **Repo**: [github.com/vi6120/Pneumonia-Detection](https://github.com/vi6120/Pneumonia-Detection)
- **Stack**: Python · TensorFlow Lite · Keras · Inception / ImageNet · C++
- **What it does**: CNN-based pneumonia classifier using Transfer Learning on the Kaggle chest X-ray dataset. Deployed via TensorFlow Lite for edge inference. References: *Computational Intelligence and Neuroscience*, 2022.

### 8. Magic Wand — Gesture Recognition on Arduino
- **Repo**: [github.com/vi6120/ML23-13-Magic-Wand](https://github.com/vi6120/ML23-13-Magic-Wand)
- **Stack**: Python · TensorFlow Lite Micro · Arduino (C++) · WebBluetooth API
- **What it does**: End-to-end TinyML pipeline on Arduino Nano 33 BLE Sense — gesture capture via WebBluetooth, model training in Google Colab, deployment with TF Lite Micro. Recognises hand-drawn digits 0–9 from accelerometer and gyroscope data.

---

## Technical Skills

| Area | Technologies |
|---|---|
| Data Engineering | Python, SQL, dbt, Apache Airflow, DuckDB, Spark, PostgreSQL, SAP MM/SD/WM, Kafka |
| AI & LLM | LangGraph, LangChain, RAG, pgvector, FAISS, HuggingFace, Groq, Azure OpenAI |
| Cloud & Platforms | Azure Data Factory, Microsoft Fabric, Power BI, Databricks, SAP HANA, Supabase |
| Frameworks | FastAPI, React (Vite + Tailwind), Streamlit, Flask, PyTorch, TensorFlow/Lite |
| Dev & Ops | Git, Docker, GitHub Actions, GitHub Apps (JWT/Webhooks), Vercel, Railway, Agile |

---

## Project Structure

```
portfolio-website/
├── index.html          # Single-file portfolio (all CSS and JS embedded)
├── Vikas_Ramaswamy.pdf # CV — linked from the Download CV button
├── images/             # Optional project screenshots
│   ├── supplyiq.jpg
│   ├── pr-review-bot.jpg
│   ├── stock-analyzer.jpg
│   └── ...
├── README.md           # This file
└── deploy.md           # Deployment guide
```

---

## Local Development

No build step required — it's a single static HTML file.

```bash
# Clone the repo
git clone https://github.com/vi6120/portfolio-website.git
cd portfolio-website

# Serve locally (Python)
python3 -m http.server 8000
# → open http://localhost:8000
```

---

## Deployment

### GitHub Pages (recommended)
```bash
git add .
git commit -m "Update portfolio"
git push origin main
```
Then: **Settings → Pages → Source: Deploy from branch → main → Save**

Your site will be live at `https://vi6120.github.io/portfolio-website/`

### Netlify (drag & drop)
Zip the folder and drag it to [netlify.com](https://netlify.com/drop) — instant deploy, no account needed.

### Vercel
```bash
npx vercel --prod
```

Full instructions in [`deploy.md`](./deploy.md).

---

## CV Download

Place `Vikas_Ramaswamy.pdf` in the root of the repository alongside `index.html`. The **Download CV** button in the nav and hero sections will serve it automatically.

---

## Contact

| | |
|---|---|
| Email | vikasramaswamyj@gmail.com |
| LinkedIn | [linkedin.com/in/vikasramaswamy](https://www.linkedin.com/in/vikasramaswamy) |
| GitHub | [github.com/vi6120](https://github.com/vi6120) |
| Location | Munich, Germany |
| Availability | Immediately |

---

**Author**: Vikas Ramaswamy · Data & AI Engineer  
**License**: MIT
