# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Devstech.Repo.insert!(%Devstech.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Devstech.{Repo, Core.User}
Repo.insert! %User{
    name: "John Doe",
    email: "test@example.com",
    password: "123456"
}
