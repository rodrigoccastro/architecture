Code architecture model, where the controller calls the business, which calls the repository that accesses the Model.

The information goes back from the repository to the business and then to the controller, which calls the serializer to format the data and deliver it to the endpoint.

First move: Controller -> business -> repository -> model (fetches the data)

Second movement: model -> repository -> business -> controller (deliver the data)

Third move: controller -> serializer -> controller -> response (formats the data)

