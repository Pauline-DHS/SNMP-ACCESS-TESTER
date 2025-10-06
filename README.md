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

ClientA 192.168.1.10
ClientB 10.0.0.5

### 2️⃣ Lancer le script
bash snmp_tester.sh ips.txt resultats.csv

### 1️⃣ Préparer le fichier d’entrée
Un fichier resultats.csv contenant :

Client,IP,Status
ClientA,192.168.1.10,Ouvert
ClientB,10.0.0.5,Fermé

## 🧰 Prérequis

Linux / macOS

snmpwalk ou nmap

Droits suffisants pour exécuter des tests réseau

## 📘 Exemple d’usage

Ce script a été utilisé pour vérifier les configurations d’ACL dans le cadre d’une analyse de sécurité sur une vulnérabilité 0-day affectant le protocole SNMP.

## 🧑‍💻 Auteur

Projet maintenu par [Pauline DEHORS]
🗓️ Octobre 2025
