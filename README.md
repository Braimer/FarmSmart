#  FarmSmart

FarmSmart is a conversational AI assistant built with **Jaclang** and **Gemini**.  
It helps Kenyan farmers with practical advice on **crop farming, livestock, and agribusiness**.  
The bot mixes English with a little Swahili for a natural, local touch.  

---

## Features
- Friendly chatbot that understands farmer questions.  
- Covers land prep, planting, irrigation, pest control, harvesting, and livestock care.  
- Advice on feeding, housing, disease prevention, breeding, and productivity.  
- Guides farmers on agricultural economics & financial decisions.    
- Tailored for Kenyan smallholder farmers   

---

## ⚙️ Setup

```bash
# 1. Clone the repo
git clone git@github.com:Braimer/FarmSmart.git
cd FarmSmart

# 2. Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Add your API key
echo "GOOGLE_API_KEY=your_gemini_api_key_here" > .env

# 5. Run the bot
jac run main.jac
