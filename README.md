# Przetwarzanie Danych z Dockerem 🐳

Prosty projekt pokazujący podstawy konteneryzacji w środowisku Data/AI. Skrypt w języku Python działa w wyizolowanym kontenerze Dockera i przetwarza pliki z lokalnego dysku komputera dzięki wykorzystaniu wolumenów (bind mounts).

## 🚀 Główne cechy
* **Pełna izolacja:** Kod uruchamia się w niezależnym środowisku (obraz `python:3.10-slim`).
* **Zarządzanie danymi:** Kontener czyta dane wejściowe i zapisuje wyniki bezpośrednio na fizycznym dysku użytkownika, bez wbudowywania ich w obraz.
* **Autoczyszczenie:** Środowisko automatycznie zamyka się i usuwa po wykonaniu zadania.

## 🛠️ Jak to uruchomić?

**1. Zbuduj obraz:**
Będąc w głównym folderze projektu, wpisz w terminalu:
```bash
docker build -t moj-projekt-ai .