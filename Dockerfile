# 1. BAZA: Zaczynamy od oficjalnego obrazu Pythona. 
# Wersja "slim" oznacza, że to odchudzony Linux, idealny żeby obraz nie ważył kilku gigabajtów.
FROM python:3.10-slim

# 2. KATALOG ROBOCZY: Tworzymy folder /app wewnątrz naszego kontenera i mówimy Dockerowi: "od teraz wszystko rób w tym folderze".
WORKDIR /app

# 3. KOPIOWANIE ZALEŻNOŚCI: Kopiujemy plik requirements.txt z Twojego komputera (pierwsza kropka lub nazwa pliku) do folderu /app w kontenerze (druga kropka).
COPY requirements.txt .

# 4. INSTALACJA: Uruchamiamy komendę instalującą biblioteki ze skopiowanego pliku.
RUN pip install --no-cache-dir -r requirements.txt

# 5. KOPIOWANIE KODU: Kopiujemy resztę naszych plików (czyli main.py) z komputera do kontenera.
COPY main.py .

# 6. START: Określamy domyślną komendę, która wykona się, gdy uruchomimy kontener z tego obrazu.
CMD ["python", "main.py"]