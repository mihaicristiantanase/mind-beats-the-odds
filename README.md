# mind-beats-the-odds
### _Mihai Cristian Tănase_

Does mind beat the odds?

Find out by focusing you concentration just after running the main function.

## How to run

1. Without quicklisp
```sh
sbcl \
  --eval '(asdf:load-asd "mind-beats-the-odds.asd")' \
  --eval "(asdf:load-system :mind-beats-the-odds)" \
  --eval "(mind-beats-the-odds:mind-beats-the-odds)"
```

2. With quicklisp
```sh
sbcl \
  --eval '(ql:quickload "mind-beats-the-odds")' \
  --eval "(mind-beats-the-odds:mind-beats-the-odds-p)"
```

## License

MIT License

