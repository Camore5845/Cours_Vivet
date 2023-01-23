# Exercice TP

## Partie 1 :

1. CREATION TABLE nom_de_la_table;

2. INSERT [INTO] nom_de_la_table_cible [(liste_des_colonnes_visées)] DELETE FROM T_CLIENT WHERE CLI_ID > 100 UPDATE nom_table_cible
   SET colonne = valeur [, colonne2 = valeur2 ...]
   [WHERE condition]

3. CREATE TABLE public.newtable3 (
   column1 varchar NULL,
   CONSTRAINT newtable3_fk FOREIGN KEY (column1) REFERENCES public.newtablefs(column1)
   );

4. 

5. ALTER TABLE public.hgt ADD column1 varchar NULL;

6. ALTER TABLE <table_name> DROP { CONSTRAINT <name> | PRIMARY KEY | { UNIQUE | FOREIGN KEY } (<column>, [ ... ] ) } [ CASCADE | RESTRICT ]

7. ALTER TABLE Commande
   ADD FOREIGN KEY (Livraison ID)
   REFERENCES Livraison (Livraison ID)

## Partie 2 :

• Donner la liste des camions triés par NoImmatriculation

```sql
select numero_immatriculation, nom_proprietaire 
from camion
Order By numero_immatriculation
```

- Donner la liste des type de déchet trié par libellé

```sql
SELECT * FROM type_dechet
ORDER BY libelle ASC;
```

- La liste des types déchets transportables par camion (NoImmatriculation, NomPropriétaire,  LibelléType)
