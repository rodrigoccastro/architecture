Modelo de arquitetura de código, onde o controller chama o business, que chama o repository que acessa o Model.

A informação volta do repository para o business e em seguida ao controller, que chama o serializer para formatar os dados e entregar ao endpoit.

Primeiro movimento: Controller -> business -> repository -> model (busca os dados)

Segundo movimento: model -> repository -> business -> controller (entrega os dados)

Terceiro movimento: controller -> serializer -> controller -> response (formata os dados)

