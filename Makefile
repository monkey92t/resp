test:
	go test ./...
	go test ./... -short -race
	go test ./... -run=NONE -bench=. -benchmem
	env GOOS=linux GOARCH=386 go test ./...
	go vet

bench:
	go test ./... -test.run=NONE -test.bench=. -test.benchmem

.PHONY: all test bench