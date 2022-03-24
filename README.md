Modelo de arquitetura de código, onde o controller chama o business, que chama o repository que acessa o Model.

A informação volta do repository para o business e em seguida ao controller, que chama o serializer para formatar os dados e entregar ao endpoit.
