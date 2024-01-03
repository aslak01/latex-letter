Fork of [Letter Boilerplate](https://github.com/mrzool/letter-boilerplate),

After installing dependencies `Pandoc`, a `LaTeX` distribution, e.g. `TinyTeX`,
`fontspec`, `geometry`, `ragged2e`, `enumitem`, `xunicode`, `hyperref`,
`polyglossia`, `footmisc`, `datetime2`:

```bash
cp letter-example.md letter.md
make
```

To automatically archive sent letters, there is a script that will add it to the
folder `sendt` (Norwegian spelling sorry) available as `make send [recipient]`.
It adds a dependency on `rsync`, and stores the output pdf as `recipient.pdf`
along with the `letter.md` file in a folder named for the recipient,
incrementing a number behind its name if there is a collision.
