#Método
#No Robot Framework o método é uma palavra-chave
def welcome(name):
    return "Olá " + name + ", bem-vindo(a) ao Curso básico de Robot Framework!"

#Invocação do método dentro de uma variável
result = welcome("Nicole")

#Impressão do valor que a variável armazenou
print(result)

#Para executar o software: python app.py
#Para executar o teste: robot test.robot