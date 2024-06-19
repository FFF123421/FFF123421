vārds uzvārds loma vecums
Jānis Bērziņš administrators 45
Anna Kalniņa administrators 30
Pēteris Ozols viesis 28
Līga Liepiņa viesis 34

# Lasīt datus no failiem
with open('admin.txt', 'r', encoding='utf-8') as admin_file:
    admin_data = admin_file.readlines()

with open('viesis.txt', 'r', encoding='utf-8') as viesis_file:
    viesis_data = viesis_file.readlines()

# Apvienot datus
all_data = admin_data + viesis_data

# Izdrukāt apvienoto datni
print("Apvienotā datne:")
for line in all_data:
    print(line.strip())

# Filtrēt administratoru datus
admin_ages = [int(line.split()[3]) for line in admin_data]

# Aprēķināt vidējo vecumu
average_age = sum(admin_ages) / len(admin_ages)

# Atrast visvecāko un visjaunāko administratoru
oldest_admin = max(admin_ages)
youngest_admin = min(admin_ages)

# Izdrukāt statistiku
print(f"\nVidējais administratoru vecums: {average_age:.2f}")
print(f"Visvecākais administrators: {oldest_admin}")
print(f"Visjaunākais administrators: {youngest_admin}")

# Sadalīt datus pēc lomām
admin_count = len(admin_data)
viesis_count = len(viesis_data)

# Izdrukāt skaitu
print(f"\nAdministratoru skaits: {admin_count}")
print(f"Viesu skaits: {viesis_count}")
