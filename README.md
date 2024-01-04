Fork of [Letter Boilerplate](https://github.com/mrzool/letter-boilerplate),

After installing dependencies `Pandoc`, a `LaTeX` distribution, e.g. `TinyTeX`,
and the LaTeX packages `microtype`, `fontspec`, `geometry`, `ragged2e`,
`enumitem`, `xunicode`, `xltxtra`, `hyperref`, `babel`, `datetime2` with `tlmgr`
(some may be included by default):

```bash
cp letter-example.md letter.md
make
```

To automatically archive sent letters, there is a script that will add it to the
folder `sendt` (Norwegian spelling sorry) available as `make send [recipient]`.
It adds a dependency on `rsync`, and stores the output pdf as `recipient.pdf`
along with the `letter.md` file in a folder named for the recipient,
incrementing a number behind its name if there is a collision.
