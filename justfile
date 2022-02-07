gen-dart:
    protoc -Iprotos protos/*.proto --dart_out=grpc:lib/generated
gen-py:
    python3 -m grpc_tools.protoc -Iprotos protos/*.proto \
            --python_out=backend \
            --grpc_python_out=backend

