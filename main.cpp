#include <QCoreApplication>
#include <QThread>
#include <grpcpp/grpcpp.h>
#include "example.grpc.pb.h"

using example::Greeter;
using example::HelloRequest;
using example::HelloResponse;

class GreeterImpl final : public Greeter::Service {
    ::grpc::Status SayHello(::grpc::ServerContext* context, const HelloRequest* request, HelloResponse* response) override {
        std::string name = request->name();
        std::string message = "Hello, " + name + "!";
        response->set_message(message);
        return ::grpc::Status::OK;
    }
};

void RunServer() {
    std::string server_address("0.0.0.0:50051");
    GreeterImpl service;

    grpc::ServerBuilder builder;
    builder.AddListeningPort(server_address, ::grpc::InsecureServerCredentials());
    builder.RegisterService(&service);

    std::unique_ptr<::grpc::Server> server(builder.BuildAndStart());
    std::cout << "Server listening on " << server_address << std::endl;
    server->Wait();
}

int main(int argc, char** argv) {
    QCoreApplication app(argc, argv);

//    // Start the gRPC server in a separate thread
//    QThread* server_thread = new QThread();
//    QObject::connect(server_thread, &QThread::started, RunServer);
//    server_thread->start();

//    // Create a gRPC channel to connect to the server
//    std::shared_ptr<::grpc::Channel> channel = ::grpc::CreateChannel("localhost:50051", ::grpc::InsecureChannelCredentials());

//    // Create a Greeter client
//    std::unique_ptr<Greeter::Stub> stub = Greeter::NewStub(channel);

//    // Prepare the request
//    HelloRequest request;
//    request.set_name("Alice");

//    // Call the SayHello RPC
//    HelloResponse response;
//    ::grpc::ClientContext context;
//    ::grpc::Status status = stub->SayHello(&context, request, &response);

//    if (status.ok()) {
//        std::cout << "Server replied: " << response.message() << std::endl;
//    } else {
//        std::cout << "RPC failed with error code: " << status.error_code() << ", error message: " << status.error_message() << std::endl;
//    }

    return app.exec();
}
