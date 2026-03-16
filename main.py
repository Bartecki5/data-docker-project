import os

def process_data():
    # Ścieżki do plików wewnątrz kontenera
    input_path = "data/input.txt"
    output_path = "data/output.txt"
    
    print("Rozpoczynam czytanie danych z zamontowanego wolumenu...")
    
    if os.path.exists(input_path):
        with open(input_path, "r", encoding="utf-8") as f:
            content = f.read().strip()
        print(f"Dane wejściowe: '{content}'")
        
        # Symulacja pracy modelu AI
        result = f"Wynik modelu AI dla danych: [{content}] -> PRZETWORZONO SUKCESEM"
        
        with open(output_path, "w", encoding="utf-8") as f:
            f.write(result)
        print(f"Sukces! Zapisano wynik do {output_path}. Sprawdź swój folder na Windowsie!")
    else:
        print(f"BŁĄD: Nie znalazłem pliku {input_path}! Upewnij się, że wolumen jest dobrze podpięty.")

if __name__ == "__main__":
    process_data()