from transformers import AutoModelForCausalLM, AutoTokenizer

# Загрузка токенизатора и модели
model_name = "deepseek-ai/DeepSeek-V3-Base"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(model_name, trust_remote_code=True, revision="main")

print("Модель и токенизатор успешно загружены!")