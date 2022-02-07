# To use this file, install Just: https://github.com/casey/just

gen-dart:
    protoc -Iprotos protos/*.proto --dart_out=grpc:lib/generated
gen-py:
    python3 -m grpc_tools.protoc -Iprotos protos/*.proto \
            --python_out=backend \
            --grpc_python_out=backend
lint:
    # exclude protobuf files from formatting
    dart format -l 120 $(find . -name "*.dart" -not -name "*.pb*.dart")

