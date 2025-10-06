# SNMP Access Tester

Un petit script permettant de tester automatiquement l’accessibilité du service **SNMP (UDP/161)** sur une liste d’IP, afin de vérifier la bonne configuration des ACLs réseau.

---

## 🚀 Fonctionnalités
- Lecture d’un fichier texte/tabulation avec les colonnes :
  - `Nom du client`
  - `Adresse IP`
- Test de l’ouverture du port SNMP via une requête réelle
- Génération d’un fichier de sortie avec les résultats :
  - `Nom du client`
  - `Adresse IP`
  - `Résultat du test (Ouvert / Fermé)`

---

## ⚙️ Utilisation

### 1️⃣ Préparer le fichier d’entrée
Créer un fichier `ips.txt` au format suivant :
