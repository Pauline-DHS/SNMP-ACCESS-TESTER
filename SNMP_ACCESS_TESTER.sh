#!/bin/bash

# --- Variables à adapter ---
INPUT_FILE="list_IP.txt"        # fichier d'entrée (tabulation entre nom et IP) 
OUTPUT_FILE="resultats.csv" # fichier de sortie CSV
COMMUNITY="public"          # communauté SNMP (à adapter)
OID="1.3.6.1.2.1.1.1.0"     # sysDescr.0 — réponse basique SNMP

# --- Initialisation du fichier de sortie ---
echo "nom client,IP,SNMP" > "$OUTPUT_FILE"

# --- Boucle sur chaque ligne du fichier ---
while IFS=$'\t' read -r nom ip
do
    # ignorer les lignes vides
    [[ -z "$nom" || -z "$ip" ]] && continue

    echo "🔎 Test de $nom ($ip)..."

    # Test SNMP : on tente une requête GET réelle
    if snmpget -v2c -c "$COMMUNITY" -t 2 -r 1 "$ip" "$OID" &>/dev/null; then
        echo "$nom,$ip,ouvert" >> "$OUTPUT_FILE"
    else
        echo "$nom,$ip,fermé" >> "$OUTPUT_FILE"
    fi

done < "$INPUT_FILE"

echo "✅ Résultats enregistrés dans $OUTPUT_FILE"
