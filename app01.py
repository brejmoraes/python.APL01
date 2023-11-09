import json

itens = [
    {
        "id": 1,
        "name": "bagulho",
        "descrição": "apenas um bagulho",
        "location": "em uma caixa"
    },    {
        "id": 2,
        "name": "Tranqueira",
        "descrição": "apenas um tranqueira qualquer",
        "location": "em um gaveteiro"
    },

    {
        "id": 3,
        "name": "Bagulete",
        "descrição": "apenas um Bagulete qualquer",
        "location": "Na esquina "
    }
]


def get_all():
    var_json = json.dump(itens,indent=2)
    print(var_json)

def get_one(id):
    var_json = json.dump(itens[id],indent=2)
    print(var_json)

get_one(1)
get_all(1)