#include <QCoreApplication>
#include <QDebug>

#include "example.grpc.pb.h"
#include "example.pb.h"

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);

//    // 创建gRPC通道和存根
//    std::shared_ptr<grpc::Channel> channel = grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials());
//    std::unique_ptr<example::Greeter::Stub> stub = example::Greeter::NewStub(channel);

//    // 创建请求
//    example::HelloRequest request;
//    request.set_name("Alice");

//    // 发起gRPC调用
//    grpc::ClientContext context;
//    example::HelloResponse response;
//    grpc::Status status = stub->SayHello(&context, request, &response);

//    // 处理响应
//    if (status.ok()) {
//        qDebug() << "Received response: " ;
//    } else {
//        qDebug() << "RPC failed with error code: " << status.error_code() ;
//    }

    return app.exec();
}
