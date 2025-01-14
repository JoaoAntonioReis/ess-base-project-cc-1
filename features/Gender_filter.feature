Feature: Filtrar filmes por gênero 
as a um usuário
I want to escolher um filtro de gênero e ver os filmes relacionados a esse gènero.

Scenario: O usuário busca filmes da categoria "Drama".
Given "João" esta na "Homepage".
When "João" clica na aba de "busca por filtros" presente na "Homepage".
And na aba "Busca de filtros" uma janela é aberta para a seleção dos gêneros: "Ação", "Aventura", "Drama", "Teror", "Suspense".
When "João" Clica em um filtro "Drama" e é então direcionado a "tela de busca" onde encontra uma lista com 3 filmes: "Orgulho e preconceito", "Ainda estou aqui", "Que horas ela volta?". 
And "João" seleciona o filme "Orgulho e preconceito".
And "João" é redirecionado a janela de reprodução do filme "Orgulho e preconceito".

Scenario: O usuário utiliza a função de combinação de filtros na tela de busca.
Given "João" está na "Homepage".
When "João" clica na aba de "busca por filtros" presente na "Homepage".
And na "tela de busca" existe uma função chamada "Combinar Filtros" que permite selecionar múltiplos gêneros simultaneamente.
When "João" utiliza a função "Combinar Filtros" para selecionar os gêneros "Drama" e "Suspense".
Then "João" é direcionada à "tela de busca" onde encontra uma lista com 3 filmes que combinam os gêneros selecionados: "Ilha do Medo", "O Sexto Sentido", "Garota Exemplar".
And "João" seleciona o filme "Ilha do Medo".
And "João" é redirecionada à janela de reprodução do filme "Ilha do Medo".
