import os

# Klasör ve çıktı dosyası
output_folder = "output"
combined_file = "combined_model_1_sorted_results.txt"

results = []

# Klasördeki tüm dosyaları döngüye al
for filename in os.listdir(output_folder):
    if filename.endswith("_out.pdbqt"):
        filepath = os.path.join(output_folder, filename)
        with open(filepath, 'r') as file:
            lines = file.readlines()
            for line in lines:
                if line.startswith("REMARK VINA RESULT:"):
                    # İlk affinity değerini al
                    affinity = float(line.split()[3])
                    results.append((filename, affinity))
                    break

# Sonuçları affinity değerine göre sırala (küçükten büyüğe)
results.sort(key=lambda x: x[1])

# Sonuçları dosyaya yaz
with open(combined_file, 'w') as combined:
    for filename, affinity in results:
        combined.write(f"{filename}: {affinity}\n")

print(f"Sonuçlar {combined_file} dosyasına küçükten büyüğe sıralı olarak yazıldı.")
