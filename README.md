# Exercício de Roles e Usuários no MySQL

## Descrição
Este exercício explora a gestão avançada de **Roles** e **Usuários** no MySQL, utilizando o schema `lojaInformatica`. Ele cobre aspectos como exclusão de usuários, criação de novos usuários e roles, atribuição de privilégios, e ajustes de permissões para refletir cenários reais de controle de acesso.

---

## Estrutura do Exercício

### 1. **Exclusão de Usuários**
- Todos os usuários previamente criados foram removidos, exceto os essenciais ao sistema:
  - `mysql.infoschema`
  - `mysql.session`
  - `mysql.sys`
  - `root`

---

### 2. **Criação de Roles**
Foram definidas 5 roles com os seguintes privilégios:
1. **`role1`**
   - Inicialmente: Permissões de leitura (`SELECT`) no schema inteiro.
   - Após ajuste: Permissões de criação e exclusão (`CREATE`, `DROP`).

2. **`role2`**
   - Permissões de inserção (`INSERT`), criação (`CREATE`) e exclusão (`DROP`) na tabela `clientes`.

3. **`role3`**
   - Permissão de leitura (`SELECT`) na tabela `vendas`.

4. **`role4`**
   - Permissões completas (`SELECT`, `INSERT`, `UPDATE`, `DELETE`) no schema inteiro.

5. **`role5`**
   - Permissão de atualização (`UPDATE`) na tabela `vendas`.

---

### 3. **Criação de Usuários**
Foram criados 10 usuários locais, cada um com uma senha específica. Cada usuário foi vinculado a uma ou mais roles, conforme a necessidade:
- **Usuários e suas roles associadas:**
  - `laisa`: `role5`
  - `carla`: `role1`
  - `robert`: `role2`
  - `fiona`: `role4`
  - `bolacha`: `role2`
  - `bruna`: `role3`
  - `sophia`: `role1`, `role3`
  - `junia`: `role3`
  - `bruno`: `role1`
  - `francisca`: `role5`

---

### 4. **Alteração de Privilégios**
- A role `role1` teve o privilégio de leitura (`SELECT`) revogado e passou a incluir permissões de criação e exclusão (`CREATE`, `DROP`) no schema `lojaInformatica`.

---

## Objetivos

- Demonstrar o uso de roles para simplificar a atribuição de permissões a usuários.
- Simular ajustes de privilégios para refletir mudanças de requisitos organizacionais.
- Garantir um controle granular de acesso às tabelas e operações do schema.

---

## Como Usar

1. **Exclusão de Usuários Antigos**
   - Certifique-se de excluir usuários antigos para iniciar com um ambiente limpo.
   - Preserve apenas os usuários essenciais.

2. **Criação de Roles**
   - Defina roles com privilégios específicos que atendam às necessidades do sistema.

3. **Criação e Configuração de Usuários**
   - Crie novos usuários e vincule-os às roles apropriadas.
   - Configure as roles padrão para cada usuário, garantindo que elas sejam ativadas automaticamente no login.

4. **Ajustes de Privilégios**
   - Utilize comandos para revogar e conceder novos privilégios às roles conforme necessário.

5. **Validação**
   - Utilize o comando `SHOW GRANTS` para verificar as permissões de usuários e roles.

---

## Benefícios do Exercício

- **Simplificação:** Roles centralizam a gestão de privilégios, reduzindo complexidade ao adicionar novos usuários.
- **Flexibilidade:** Permissões podem ser ajustadas dinamicamente para atender a novos requisitos.
- **Segurança:** O controle granular de acesso melhora a segurança do sistema.

---

## Considerações Finais
Este exercício destaca as melhores práticas para gerenciar acessos no MySQL utilizando roles e usuários. Ele é aplicável em cenários reais, onde permissões dinâmicas e controles de acesso refinados são necessários para proteger dados e operações do sistema.
