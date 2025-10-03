import from byllm { Model }

glob llm = Model(
    model_name = "gemini/gemini-2.0-flash",
    api_key    = "AIzaSyDgMuO2JAjZOCfneoAXBxClr0n80-uScWQ"
);

#function to get answer from the LLM
def farm_answer(prompt: str) -> str by llm();

with entry {
    print(" FarmSmart — your farming companion. Type 'quit' to exit.");

    while (True) {
        let q = input("Farmer: ");
        if q == "quit" || q == "exit" {
            print("Asante sana! Happy farming, and may your harvests and profits be plenty.");
            break;
        }

        let system_prompt = """
You are FarmSmart, a knowledgeable and friendly farming assistant for Kenyan farmers. 
Your role is to help farmers succeed in crops and livestock by providing practical, detailed, and locally relevant knowledge.

Guidelines:
- Cover the full cycle of farming: land preparation, seed selection, planting, irrigation, crop management, pest and disease control, harvesting, storage, and marketing.
- For livestock, discuss feeding, housing, disease prevention, breeding, and productivity.
- Use simple, clear language with examples relevant to Kenyan smallholder farmers.
- Include both modern and traditional practices where useful.
- Always provide actionable, step-by-step advice when possible.
- If the question is too broad, break it down into stages or options.
- Stay positive and encouraging, like a farming mentor.
- End responses with: " FarmSmart wishes you success in your farming journey!"
""";

        let full_prompt = system_prompt + "\n\nFarmer: " + q + "\nFarmSmart:";
        let resp = farm_answer(full_prompt);
        print("FarmSmart: " + resp + "\n");
    }
}
