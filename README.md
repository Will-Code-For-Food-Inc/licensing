# Will Code For Food — licensing

The licence used across Will Code For Food projects, and a script to apply it.

These projects are Claude tokens converted into something other people can use.
The licence is chosen to keep that true: anyone may learn from them, research
with them, or use them to do their job — and nobody may turn them into a product.

## Apply it

```sh
./install.sh ../some-project            # names it after the directory
./install.sh ../some-project tagpad     # or name it yourself
```

Copies both licence texts and writes a `LICENSE.md` naming the project. It will
not overwrite an existing `LICENSE.md`: relicensing is a decision, not something
a script should do quietly.

## What it grants

Recipients choose **either**:

- **[PolyForm Noncommercial 1.0.0](LICENSE-NONCOMMERCIAL.md)** — any noncommercial
  purpose. Names research explicitly, and covers educational institutions, public
  research organizations, public safety and health organizations, and government
  institutions regardless of how they are funded.
- **[PolyForm Internal Use 1.0.0](LICENSE-INTERNAL-USE.md)** — use for the internal
  business operations of you and your company.

Neither alone does the job. Noncommercial does not clearly cover a for-profit
company using the software to do its own work; Internal Use covers exactly that
but grants no general research rights and forbids distribution. Offered together
they add up to the intent:

**research yes, using it at your job yes, selling it no.**

## Documentation

Prose — READMEs, notes, findings — is **CC BY-NC-SA 4.0** instead, via
[LICENSE-DOCS.md](LICENSE-DOCS.md). Creative Commons themselves recommend
against CC for software, and PolyForm reads oddly applied to an essay, so each
half uses the licence built for it. Same intent on both sides.

## Irrevocable

`LICENSE.md` adds a perpetual and irrevocable grant over published versions,
binding on successors — because neither PolyForm text says anything about
revocation, and a licence you can withdraw is not one anyone can build on.

It is also honest about the limit. Future versions can be licensed differently;
copyright cannot be surrendered that way, and no wording would survive it. What
is promised is that **what has already been published stays published on these
terms**, so a later change leaves existing copies untouched and forkable.

## Why standard texts

Both are drafted by the [PolyForm Project](https://polyformproject.org) and used
widely enough that a corporate legal team will recognise them. A bespoke licence
saying the same thing would get a project rejected at exactly the review step
these terms exist to pass.

## Not legal advice

Written by the authors, not by lawyers. The licence texts are the terms; this is
a summary of them. If you are adopting one inside an organization, have your own
counsel read it.
