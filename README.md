# 🤖 LLM Excel/CSV Processor

A powerful tool that uses local Large Language Models (LLMs) to process and clean up messy Excel/CSV files, specifically designed to transform unreadable agent notes into professional, human-readable format.

## ✨ Features

- **File Upload Support**: Excel (.xlsx, .xls) and CSV files
- **Local LLM Integration**: Uses Ollama for private, local text processing
- **Smart Column Detection**: Automatically detects agent notes columns
- **Batch Processing**: Process all rows or select specific number of rows
- **Progress Tracking**: Real-time progress bar and status updates
- **Before/After Comparison**: Side-by-side view of original vs processed text
- **Multiple Export Options**: Download results as CSV or Excel
- **User-Friendly Interface**: Clean, intuitive web interface built with Streamlit

## 🚀 Quick Start

### Prerequisites

1. **Python 3.8 or higher**
2. **Ollama** - For running local LLMs

### Installation

1. **Clone or download this project**
   ```bash
   # Navigate to the project directory
   cd "Cx Location"
   ```

2. **Install Python dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Install and setup Ollama**
   
   **Windows:**
   - Download Ollama from: https://ollama.ai/download/windows
   - Install and run the installer
   
   **macOS:**
   ```bash
   brew install ollama
   ```
   
   **Linux:**
   ```bash
   curl -fsSL https://ollama.ai/install.sh | sh
   ```

4. **Start Ollama service**
   ```bash
   ollama serve
   ```

5. **Pull a language model** (in a new terminal)
   ```bash
   # For general use (recommended)
   ollama pull llama2
   
   # Or for faster processing (smaller model)
   ollama pull phi3:mini
   
   # Or for better quality (larger model)
   ollama pull codellama
   ```

6. **Run the application**
   ```bash
   streamlit run app.py
   ```

7. **Open your browser** and go to `http://localhost:8501`

## 📋 How to Use

### Step 1: Check LLM Status
- The sidebar shows whether Ollama is running (🟢 green = running, 🔴 red = not running)
- Select your preferred model from the dropdown

### Step 2: Upload Your File
- Click "Browse files" or drag & drop your Excel/CSV file
- Supported formats: `.csv`, `.xlsx`, `.xls`

### Step 3: Select Column
- Choose the column containing messy agent notes
- The app will try to auto-detect columns with "agent" and "notes" in the name

### Step 4: Configure Processing
- Choose to process all rows or specify a number
- Decide whether to create a new column or overwrite existing one
- Set the name for the new processed column

### Step 5: Process & Download
- Click "🚀 Start Processing" to begin
- Watch the progress bar and status updates
- Review the before/after comparison
- Download results in CSV or Excel format

## 🔧 Configuration Options

### Models
Different models offer different trade-offs:
- **llama2** (7B): Good balance of speed and quality
- **phi3:mini** (3.8B): Faster processing, good for simple cleanup
- **codellama** (7B): Better at understanding structured text
- **mistral** (7B): Another good general-purpose option

### Processing Options
- **Batch Size**: Process all rows or limit to specific number
- **Column Handling**: Create new column or overwrite existing
- **Custom Column Names**: Name your processed columns

## 📊 Sample Input/Output

### Before (Messy Agent Notes):
```
34652 Delivery Locc Unsafe Delivery Force Complete - Re Order #: 200013249321375 Store #: Walmart NEW PORT RICHEY #994 Trip #: CALL...
```

### After (Processed):
```
**Order Information:**
- Order #: 200013249321375
- Store: Walmart NEW PORT RICHEY #994
- Trip #: 3837 (2 orders)

**Issue:**
- Unsafe delivery location
- Driver requested return due to safety concerns

**Resolution:**
- Forced complete as return
- Items returned to store

**Driver Details:**
- Name: Ingrid Poleo
- Contact: ingrid.24.p@gmail.com, 3214174167
- Onboarded: Nov 5th, 2022
```

## 🛠️ Troubleshooting

### Ollama Not Running
```bash
# Start Ollama service
ollama serve

# Check if running
curl http://localhost:11434/api/tags
```

### No Models Available
```bash
# Pull a model
ollama pull llama2

# List installed models
ollama list
```

### Processing Errors
- Check that your file has the correct format
- Ensure the selected column contains text data
- Verify Ollama is running and responsive

### Performance Issues
- Use smaller models (phi3:mini) for faster processing
- Process fewer rows at a time
- Ensure adequate RAM (8GB+ recommended for larger models)

## 🔒 Privacy & Security

- **Local Processing**: All text processing happens locally on your machine
- **No Data Upload**: Your files never leave your computer
- **Private Models**: Uses local LLMs, no external API calls

## 🎯 Use Cases

- **Customer Service**: Clean up messy support tickets and agent notes
- **Data Processing**: Standardize unstructured text data
- **Report Generation**: Transform raw logs into readable summaries
- **Quality Assurance**: Improve consistency in documentation

## 📝 Requirements

- Python 3.8+
- 8GB+ RAM (for running local LLMs)
- 5GB+ disk space (for model storage)
- Windows/macOS/Linux

## 🤝 Contributing

Feel free to submit issues, feature requests, or pull requests to improve this tool!

## 📄 License

This project is provided as-is for personal and educational use.