#language: en

@smoke
Feature: Login

  Scenario: Successfully Login
    Given I visit login
    When I enter "regiane.lxpt@gmail.com" and "qazqaz"
    Then I should see "Regiane" page

  Scenario Outline: Unsuccessufully Login
    Given I visit login
    When I enter <email> and <password>
    Then I should see alert message <text>

    Examples:
      | email                      | password          | text                                   |
      | "novoemailteste@gmail.com" | "senha incorreta" | "Correo o contraseña inválidos"        |
      | "usuario@incorreto.com"    | "teste123"        | "Correo o contraseña inválidos"        |
      | ""                         | "teste123"        | "El correo electrónico es obligatorio" |
      | "novoemailteste@gmail.com" | ""                | "La contraseña es obligatoria"         |