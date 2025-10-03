import from byllm { Model }
import from os { getenv }   # ✅ import getenv properly

glob llm = Model(
    model_name = "gemini/gemini-2.0-flash",
    api_key    = getenv("GOOGLE_API_KEY")   # ✅ now it pulls from env
);

# function to get answer from the LLM
def farm_answer(prompt: str) -> str by llm();

with entry {
    print("FarmSmart — your farming companion. Type 'quit' to exit.");

    while (True) {
        let q = input("Farmer: ");
        if q == "quit" || q == "exit" {
            print("Asante sana! Happy farming, and may your harvests and profits be plenty.");
            break;
        }

        let system_prompt = """
You are FarmSmart, a friendly farming assistant for Kenyan farmers.

Rules:
- If farmer greets, reply warmly  and ask how you can help.
- Give short, practical, step-by-step advice for farming.
- Use encouragement, but vary the wording.
- Ask politely if the farmer needs more help.
""";

        let full_prompt = system_prompt + "\n\nFarmer: " + q + "\nFarmSmart:";
        let resp = farm_answer(full_prompt);
        print("FarmSmart: " + resp + "\n");
    }
}
