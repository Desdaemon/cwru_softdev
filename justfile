# To use this file, install Just: https://github.com/casey/just

gen: gen-dart gen-py

gen-dart:
    protoc -Iprotos protos/*.proto --dart_out=grpc:lib/generated

setup-py pybin="python3":
    {{pybin}} -m pip install mypy-protobuf grpcio-tools

gen-py pybin="python3":
    {{pybin}} -m grpc_tools.protoc -Iprotos protos/*.proto \
            --python_out=backend/generated \
            --grpc_python_out=backend/generated \
            --mypy_out=backend/generated \
            --mypy_grpc_out=backend/generated

clean:
    flutter clean
    rm -r backend/generated
    mkdir -p backend/generated
    touch backend/generated/__init__.py
    rm -r lib/generated
    mkdir -p lib/generated

lint:
    # exclude protobuf files from formatting
    dart format -l 120 $(find . -name "*.dart" -not -name "*.pb*.dart")

