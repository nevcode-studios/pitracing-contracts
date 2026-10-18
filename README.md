# pitracing-contracts

Contratos versionados con SemVer: Protobuf para agente → ingest y para los eventos de Kafka.

```bash
make gen        # buf lint + buf generate + go mod tidy
make breaking   # compara contra main
git tag v0.1.0 && git push --tags
```

- `gen/go` y `gen/ts` **sí se commitean**: `go get` descarga el código directo del repo.
- Durante el desarrollo local los demás repos usan `go.work` (en la carpeta padre) y no necesitan un tag nuevo por cada cambio.
