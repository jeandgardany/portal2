-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 11-Jun-2016 às 06:30
-- Versão do servidor: 5.5.49-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `portal2_development`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '160000',
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nascimento` date NOT NULL,
  `endereco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ativo',
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alunos_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `matricula`, `nome`, `sexo`, `nascimento`, `endereco`, `telefone`, `cpf`, `rg`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '160001', 'Lima Neto', 'Masculino', '2008-10-07', 'Rua Sagrada Familia, 64', '85988880001', '11111111111', '1111111', 'Ativo', 3, '2016-06-07 21:01:58', '2016-06-07 21:01:58'),
(2, '160002', 'Lis Maria', 'Feminino', '2016-06-07', 'Rua CapitÃ£o Olavo, 1313', '85988880003', '11111111112', '1111112', 'Ativo', 4, '2016-06-07 22:17:50', '2016-06-07 22:17:50'),
(3, '160003', 'Davi Lima', 'Masculino', '2000-06-08', 'Rua CapitÃ£o Olavo, 1313', '85988880004', '22222222224', '1111114', 'Ativo', 8, '2016-06-08 11:58:49', '2016-06-08 11:58:49'),
(4, '160004', 'MÃ´nica Lima', 'Feminino', '2016-06-08', 'Rua Cinderela, 90', '85988880005', '22222222225', '2222225', 'Ativo', 11, '2016-06-08 11:59:51', '2016-06-08 11:59:51'),
(5, '160005', 'Mauricio Lima', 'Masculino', '1977-03-24', 'Rua das FlÃ´res, 190', '85988880003', '11111111113', '1111113', 'Ativo', 9, '2016-06-08 12:01:00', '2016-06-08 12:01:00'),
(6, '160006', 'Maria Lima', 'Feminino', '2016-06-08', 'Rua CapitÃ£o Olavo, 2020', '85988880008', '11111111114', '2222224', 'Ativo', 7, '2016-06-08 12:06:11', '2016-06-08 12:11:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'C100',
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duracao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor` decimal(7,2) DEFAULT '0.00',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `codigo`, `nome`, `duracao`, `tipo`, `valor`, `status`, `created_at`, `updated_at`) VALUES
(1, 'C100', 'SI', '8 Semestres', 'Bacharelado', 50000.00, 'Ativo', '2016-06-05 11:54:10', '2016-06-05 11:54:10'),
(2, 'C110', 'Redes', '4 Semestres', 'Tecnólogo', 30000.00, 'Ativo', '2016-06-05 19:52:35', '2016-06-05 19:52:35'),
(3, 'C120', 'Administração', '4 Semestres', 'Tecnólogo', 30000.00, 'Ativo', '2016-06-05 19:58:47', '2016-06-05 19:58:47'),
(4, 'C140', 'Engenharia Civil', '8 Semestres', 'Bacharelado', 60000.00, 'Ativo', '2016-06-05 19:59:25', '2016-06-05 19:59:25'),
(5, 'C150', 'GTI', '5 Semestres', 'Tecnólogo', 35000.00, 'Ativo', '2016-06-05 19:59:58', '2016-06-05 19:59:58'),
(6, 'C160', 'Publicidade', '8 Semestres', 'Bacharelado', 55000.00, 'Ativo', '2016-06-05 20:00:39', '2016-06-05 20:00:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE IF NOT EXISTS `disciplinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D200',
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_disciplinas_on_funcionario_id` (`funcionario_id`),
  KEY `index_disciplinas_on_curso_id` (`curso_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `codigo`, `nome`, `status`, `funcionario_id`, `curso_id`, `created_at`, `updated_at`) VALUES
(1, 'D200', 'Desenvolvimento de Software', 'Ativo', 2, 1, '2016-06-07 21:05:14', '2016-06-07 21:05:14'),
(2, 'D210', 'Rede de computadores', 'Ativo', 2, 2, '2016-06-07 21:05:28', '2016-06-07 21:05:28'),
(3, 'D220', 'Lab. Desenvolvimento de Software', 'Ativo', 3, 1, '2016-06-10 20:38:03', '2016-06-10 20:38:03'),
(4, 'D230', 'Matemática Financeira', 'Ativo', 3, 3, '2016-06-11 01:59:07', '2016-06-11 01:59:07'),
(5, 'D240', 'Português', 'Ativo', 3, 3, '2016-06-11 01:59:55', '2016-06-11 01:59:55'),
(6, 'D250', 'Midias', 'Ativo', 2, 6, '2016-06-11 02:00:24', '2016-06-11 02:00:24'),
(7, 'D260', 'Estatística', 'Ativo', 2, 1, '2016-06-11 02:01:18', '2016-06-11 02:01:18'),
(8, 'D270', 'Banco de Dados', 'Ativo', 2, 1, '2016-06-11 02:01:49', '2016-06-11 02:01:49'),
(9, 'D280', 'Lab. Banco de Dados', 'Ativo', 3, 1, '2016-06-11 02:01:59', '2016-06-11 02:02:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcaos`
--

CREATE TABLE IF NOT EXISTS `funcaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `funcaos`
--

INSERT INTO `funcaos` (`id`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 'administrador', '2016-06-05 11:50:40', '2016-06-07 21:03:40'),
(2, 'atendente', '2016-06-05 11:50:46', '2016-06-05 11:50:46'),
(3, 'coordenador', '2016-06-05 11:51:00', '2016-06-08 12:04:11'),
(4, 'professor', '2016-06-05 11:51:13', '2016-06-11 02:02:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MF1001',
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nascimento` date NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `admissao` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `carga_horaria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `turno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ativo',
  `user_id` int(11) NOT NULL,
  `funcao_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_funcionarios_on_user_id` (`user_id`),
  KEY `index_funcionarios_on_funcao_id` (`funcao_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `matricula`, `nome`, `nascimento`, `sexo`, `cpf`, `rg`, `endereco`, `telefone`, `admissao`, `salario`, `carga_horaria`, `turno`, `status`, `user_id`, `funcao_id`, `created_at`, `updated_at`) VALUES
(1, 'MF1001', 'Jean Lima', '1971-02-09', 'Masculino', '22222222222', '2222222', 'Rua Sagrada Familia', '85981110123', '2016-06-07', 5000.00, '8 Horas', 'ManhÃ£ e Noite', 'Ativo', 1, 1, '2016-06-07 21:03:40', '2016-06-07 21:03:40'),
(2, 'MF1002', 'Aryanne Lima', '2016-06-07', 'Feminino', '33333333333', '3333333', 'Rua Cinderela', '85981110124', '2016-06-07', 3000.00, '4 Horas', 'Noite', 'Ativo', 2, 4, '2016-06-07 21:04:26', '2016-06-11 02:02:29'),
(3, 'MF1003', 'LisÃ¢ngelo Lima', '1969-06-16', 'Masculino', '22222222226', '2222226', 'Rua CapitÃ£o Luz, 1030', '85981110126', '2016-06-08', 4000.00, '8 Horas', 'ManhÃ£ e Noite', 'Ativo', 6, 4, '2016-06-08 12:02:34', '2016-06-11 02:02:29'),
(4, 'MF1004', 'AndrÃ©ia Lima', '1978-12-14', 'Feminino', '22222222227', '2222227', 'Rua Sagrada Familia', '85981110127', '2016-06-08', 3000.00, '4 Horas', 'ManhÃ£ e Noite', 'Ativo', 5, 3, '2016-06-08 12:04:11', '2016-06-08 12:04:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculas`
--

CREATE TABLE IF NOT EXISTS `matriculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semestre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inicio` date DEFAULT NULL,
  `fim` date DEFAULT NULL,
  `ap1` decimal(5,2) DEFAULT '0.01',
  `ap2` decimal(5,2) DEFAULT '0.02',
  `ap3` decimal(5,2) DEFAULT '0.03',
  `faltas` int(11) DEFAULT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `turma_id` int(11) DEFAULT NULL,
  `solicitacao_matricula_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_matriculas_on_aluno_id` (`aluno_id`),
  KEY `index_matriculas_on_funcionario_id` (`funcionario_id`),
  KEY `index_matriculas_on_turma_id` (`turma_id`),
  KEY `index_matriculas_on_solicitacao_matricula_id` (`solicitacao_matricula_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `matriculas`
--

INSERT INTO `matriculas` (`id`, `semestre`, `inicio`, `fim`, `ap1`, `ap2`, `ap3`, `faltas`, `aluno_id`, `funcionario_id`, `turma_id`, `solicitacao_matricula_id`, `created_at`, `updated_at`) VALUES
(1, '2016.2', '2016-06-07', '2016-07-07', 6.00, 7.50, NULL, 3, 1, 1, 1, 1, '2016-06-07 21:07:05', '2016-06-11 01:45:35'),
(2, '2016.2', '2016-06-07', '2016-07-07', 8.00, 10.00, NULL, 0, 2, 1, 2, 2, '2016-06-07 22:18:55', '2016-06-11 01:46:50'),
(3, '2016.2', '2016-06-07', '2016-07-07', 9.00, 8.50, NULL, 6, 1, 1, 2, 1, '2016-06-07 22:29:04', '2016-06-11 01:46:04'),
(4, '2016.2', '2016-06-01', '2016-07-01', 7.00, 8.00, NULL, 6, 1, 1, 3, 1, '2016-06-10 20:40:06', '2016-06-11 01:54:18'),
(5, '2016.02', '2016-06-01', '2016-07-01', 5.00, 6.00, NULL, 0, 3, 1, 3, 3, '2016-06-11 01:51:51', '2016-06-11 01:53:37'),
(6, '2016.02', '2016-06-01', '2016-07-01', 8.00, 7.80, NULL, 3, 3, 1, 1, 3, '2016-06-11 01:52:45', '2016-06-11 01:53:37'),
(7, '2016.02', '2016-06-10', '2016-06-10', 6.00, 7.50, NULL, 0, 1, 1, 5, 1, '2016-06-11 02:11:27', '2016-06-11 02:13:09'),
(8, '2016.02', '2016-06-10', '2016-06-10', 4.80, 8.90, NULL, 3, 1, 1, 6, 1, '2016-06-11 02:12:22', '2016-06-11 02:13:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidades`
--

CREATE TABLE IF NOT EXISTS `mensalidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pago` tinyint(1) DEFAULT NULL,
  `mes` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `solicitacao_matricula_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_mensalidades_on_aluno_id` (`aluno_id`),
  KEY `index_mensalidades_on_solicitacao_matricula_id` (`solicitacao_matricula_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `mensalidades`
--

INSERT INTO `mensalidades` (`id`, `pago`, `mes`, `ano`, `aluno_id`, `solicitacao_matricula_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 2016, 1, 1, '2016-06-07 22:03:09', '2016-06-07 22:03:09'),
(2, 1, 6, 2016, 2, 2, '2016-06-10 20:49:24', '2016-06-10 20:49:24'),
(3, 0, 6, 2016, 3, 3, '2016-06-11 01:55:49', '2016-06-11 01:55:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `models`
--

CREATE TABLE IF NOT EXISTS `models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_models_on_email` (`email`),
  UNIQUE KEY `index_models_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160507232955'),
('20160508000523'),
('20160508000927'),
('20160509044235'),
('20160510223950'),
('20160525221755'),
('20160602052829'),
('20160602063001'),
('20160606155028'),
('20160606164814'),
('20160606235303');

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao_matriculas`
--

CREATE TABLE IF NOT EXISTS `solicitacao_matriculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(5,2) DEFAULT '0.00',
  `ano` int(11) NOT NULL,
  `semestre` int(11) NOT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_solicitacao_matriculas_on_aluno_id` (`aluno_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `solicitacao_matriculas`
--

INSERT INTO `solicitacao_matriculas` (`id`, `valor`, `ano`, `semestre`, `aluno_id`, `created_at`, `updated_at`) VALUES
(1, 890.00, 2016, 2, 1, '2016-06-07 21:40:50', '2016-06-07 22:27:21'),
(2, 920.00, 2016, 2, 2, '2016-06-07 22:19:44', '2016-06-07 22:19:44'),
(3, 920.00, 2016, 2, 3, '2016-06-11 01:53:37', '2016-06-11 01:53:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE IF NOT EXISTS `turmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'T300',
  `turno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `semestre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacidade` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `disciplina_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_turmas_on_disciplina_id` (`disciplina_id`),
  KEY `index_turmas_on_funcionario_id` (`funcionario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`id`, `codigo`, `turno`, `semestre`, `capacidade`, `valor`, `disciplina_id`, `funcionario_id`, `created_at`, `updated_at`) VALUES
(1, 'T300', 'Noite', '2016.2', 40, 200, 1, 2, '2016-06-07 21:05:55', '2016-06-07 21:05:55'),
(2, 'T310', 'Noite', '2016.2', 40, 190, 2, 2, '2016-06-07 21:06:18', '2016-06-07 21:06:18'),
(3, 'T320', 'Noite', '2016.2', 40, 200, 3, 3, '2016-06-10 20:40:54', '2016-06-10 20:40:54'),
(4, 'T330', 'Noite', '2016.2', 40, 180, 8, 2, '2016-06-11 02:04:49', '2016-06-11 02:13:31'),
(5, 'T340', 'Noite', '2016.2', 30, 190, 9, 3, '2016-06-11 02:05:29', '2016-06-11 02:13:40'),
(6, 'T350', 'Noite', '2016.2', 50, 195, 5, 3, '2016-06-11 02:09:41', '2016-06-11 02:13:54'),
(7, 'T360', 'Noite', '2016.2', 40, 180, 7, 3, '2016-06-11 02:10:18', '2016-06-11 02:14:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role` int(11) DEFAULT '0',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `role`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'jeandgardany@hotmail.com', '$2a$11$5rsZKmVt/MT1/stvTNQ59ukADWt.UMx7HP/MqgvPe.E2ULLgRBufy', 5, NULL, NULL, NULL, 16, '2016-06-11 01:44:26', '2016-06-10 20:36:56', '127.0.0.1', '127.0.0.1', '2016-06-05 11:50:12', '2016-06-11 01:44:26'),
(2, 'aryannelima@teste.com', '$2a$11$tY3yMaXAgTW31MNajDyH2epaQpgNyz9jrnP2wotm6aEhZGrk0qSZ.', 4, NULL, NULL, NULL, 2, '2016-06-05 17:38:01', '2016-06-05 11:52:25', '127.0.0.1', '127.0.0.1', '2016-06-05 11:52:25', '2016-06-11 02:02:29'),
(3, 'limaneto@teste.com', '$2a$11$Af/FbMIyqlJ54//E2B5QmejLoWD0a/G/pJPjHuYC3lnmKE77Oyijq', 1, NULL, NULL, NULL, 11, '2016-06-11 01:42:31', '2016-06-10 03:10:51', '127.0.0.1', '127.0.0.1', '2016-06-05 11:52:39', '2016-06-11 01:42:31'),
(4, 'lismaria@teste.com', '$2a$11$DKZhpobSeFZXve3z4F4IyuQjClerVm721rydrEQV72izeMvkLTcgW', 1, NULL, NULL, NULL, 2, '2016-06-05 16:40:43', '2016-06-05 15:38:07', '127.0.0.1', '127.0.0.1', '2016-06-05 15:38:07', '2016-06-05 16:40:43'),
(5, 'andreialima@hot.com', '$2a$11$UylKKhU/Ozrjb81ICqX4SuSlwxWEf9hPRacF2i7laZ5kauTf2smDy', 3, NULL, NULL, NULL, 2, '2016-06-05 18:02:30', '2016-06-05 17:59:00', '127.0.0.1', '127.0.0.1', '2016-06-05 17:59:07', '2016-06-08 12:04:11'),
(6, 'lee@uol.com', '$2a$11$VjBEvgyFtlkgx3SxwY5BDOGTKy/BNybpuZDSiCBkOZ7cywcoSaN4e', 4, NULL, NULL, NULL, 1, '2016-06-05 19:45:22', '2016-06-05 19:45:22', '127.0.0.1', '127.0.0.1', '2016-06-05 19:45:22', '2016-06-11 02:02:29'),
(7, 'marialima@bol.com', '$2a$11$Rs0th00QPYnHpznHSNYKaeP7TrHrTdFIBKpeJPqIDnrtM2suUFG/W', 1, NULL, NULL, NULL, 1, '2016-06-05 19:45:48', '2016-06-05 19:45:48', '127.0.0.1', '127.0.0.1', '2016-06-05 19:45:48', '2016-06-05 19:45:48'),
(8, 'davilima@uol.com', '$2a$11$5Zor2uF8/TDr43jT2CM.fOzND/J5nfp2zb5zbXv/N0NcJupVZiHou', 1, NULL, NULL, NULL, 1, '2016-06-05 19:54:07', '2016-06-05 19:54:07', '127.0.0.1', '127.0.0.1', '2016-06-05 19:54:07', '2016-06-05 19:54:07'),
(9, 'mauriciolima@globo.com', '$2a$11$UWT14X1ZVvotkw3eqBWja.6PFhIAu60zKAUEAnTY4T6Ldwx2fCwjy', 1, NULL, NULL, NULL, 1, '2016-06-05 19:54:37', '2016-06-05 19:54:37', '127.0.0.1', '127.0.0.1', '2016-06-05 19:54:36', '2016-06-05 19:54:37'),
(10, 'usuarioteste@teste.com', '$2a$11$ZWD9se2Qqupm6Yu9of5jXubh744gm2O7jMptFY2nTV27pA1EN416i', 0, NULL, NULL, NULL, 1, '2016-06-05 20:10:18', '2016-06-05 20:10:18', '127.0.0.1', '127.0.0.1', '2016-06-05 20:10:18', '2016-06-05 20:10:18'),
(11, 'monicalima@hot.com', '$2a$11$TUMvzvuLZQABoQV8HzZHb.OkzfJTuzIMGK6MvOqu53BDS/0yqJE.e', 1, NULL, NULL, NULL, 1, '2016-06-05 20:11:09', '2016-06-05 20:11:09', '127.0.0.1', '127.0.0.1', '2016-06-05 20:11:09', '2016-06-05 20:11:09');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `fk_rails_5ef0dfc846` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `fk_rails_3837bf9429` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`),
  ADD CONSTRAINT `fk_rails_63b174f621` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `fk_rails_97cb61f82e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_9f9fa14bf7` FOREIGN KEY (`funcao_id`) REFERENCES `funcaos` (`id`);

--
-- Limitadores para a tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `fk_rails_34c534f8cb` FOREIGN KEY (`solicitacao_matricula_id`) REFERENCES `solicitacao_matriculas` (`id`),
  ADD CONSTRAINT `fk_rails_4bf0c451fc` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`),
  ADD CONSTRAINT `fk_rails_f48c055fab` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `fk_rails_f826ce1d33` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`);

--
-- Limitadores para a tabela `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD CONSTRAINT `fk_rails_012e77ab93` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `fk_rails_703fcda53e` FOREIGN KEY (`solicitacao_matricula_id`) REFERENCES `solicitacao_matriculas` (`id`);

--
-- Limitadores para a tabela `solicitacao_matriculas`
--
ALTER TABLE `solicitacao_matriculas`
  ADD CONSTRAINT `fk_rails_5e85de8a90` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`);

--
-- Limitadores para a tabela `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `fk_rails_76e53910e3` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`),
  ADD CONSTRAINT `fk_rails_d5d7eb9c9a` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
