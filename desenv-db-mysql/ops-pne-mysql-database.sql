-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema db_a1d873_opsdev
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_a1d873_opsdev
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_a1d873_opsdev` DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin ;
USE `db_a1d873_opsdev` ;

-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_layout_mascara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_layout_mascara` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_info_layout` INT(11) NULL DEFAULT NULL,
  `id_atributo_posicao` INT(11) NULL DEFAULT NULL,
  `processar` BIT(1) NULL DEFAULT NULL,
  `ordem` VARCHAR(255) NULL DEFAULT NULL,
  `criterio_selecao_tabela` MEDIUMTEXT NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `xml_dest_id` VARCHAR(255) NULL DEFAULT NULL,
  `xml_dest_prop_tag` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_metrica_pontuacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_metrica_pontuacao` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_info_metrica` INT(11) NULL DEFAULT NULL,
  `ordem` INT(11) NULL DEFAULT NULL,
  `rotulo` VARCHAR(255) NULL DEFAULT NULL,
  `cod_sis_xml_cor_face` VARCHAR(7) NULL DEFAULT NULL,
  `cod_sis_xml_cor_fundo` VARCHAR(7) NULL DEFAULT NULL,
  `css_class` VARCHAR(255) NULL DEFAULT NULL,
  `criterio_valor_atributo` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa_natureza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa_natureza` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_empresa_natureza_juridica` INT(11) NULL DEFAULT NULL,
  `codigo` VARCHAR(10) NULL DEFAULT NULL,
  `descricao` VARCHAR(100) NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa_vinculo_segmento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa_vinculo_segmento` (
  `id_empresa_segmento` INT(11) NULL DEFAULT NULL,
  `id_vinculo_posicao` INT(11) NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_posicao_social`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_posicao_social` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_cidadao` INT(11) NULL DEFAULT NULL,
  `id_cidadao_relacao` INT(11) NULL DEFAULT NULL,
  `id_relacao_social` INT(11) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_relacao_social`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_relacao_social` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `id_relacao` INT(11) NULL DEFAULT NULL,
  `ordem` VARCHAR(255) NULL DEFAULT NULL,
  `parentesco` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_compara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_compara` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_info_layout` INT(11) NULL DEFAULT NULL,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` MEDIUMTEXT NULL DEFAULT NULL,
  `registro_processamento` VARCHAR(30) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa_grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa_grupo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_compara_cidadao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_compara_cidadao` (
  `id_info_compara` INT(11) NULL DEFAULT NULL,
  `id_cidadao_politica` INT(11) NULL DEFAULT NULL,
  `valor_atributo_col` INT(11) NULL DEFAULT NULL,
  `comparar` BIT(1) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa_segmento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa_segmento` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_layout_arquivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_layout_arquivo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `arquivo_html` MEDIUMTEXT NULL DEFAULT NULL,
  `arquivo_svg` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa_grupo_cidadao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa_grupo_cidadao` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_empresa_grupo` INT(11) NULL DEFAULT NULL,
  `id_cidadao_politica` INT(11) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_layout`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_layout` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_info_layout_modelo` INT(11) NULL DEFAULT NULL,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `criterios_tabelas` MEDIUMTEXT NULL DEFAULT NULL,
  `query_origem_cidadao` MEDIUMTEXT NULL DEFAULT NULL,
  `layout_grafico` MEDIUMTEXT NULL DEFAULT NULL,
  `nome_arquivo_saida` VARCHAR(255) NULL DEFAULT NULL,
  `caminho_arquivo_formato` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_vinculo_posicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_vinculo_posicao` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `ordem` VARCHAR(255) NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_compara_mascara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_compara_mascara` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_info_compara` INT(11) NULL DEFAULT NULL,
  `id_info_layout_mascara` INT(11) NULL DEFAULT NULL,
  `id_info_metrica` INT(11) NULL DEFAULT NULL,
  `ordem` VARCHAR(255) NULL DEFAULT NULL,
  `ativo` BIT(1) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_atributo_posicao_tabela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_atributo_posicao_tabela` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_atributo_posicao` INT(11) NULL DEFAULT NULL,
  `tabela` VARCHAR(255) NULL DEFAULT NULL,
  `coluna` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_sis_xml_cor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_sis_xml_cor` (
  `cod` VARCHAR(7) NOT NULL,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`cod`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa_natureza_juridica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa_natureza_juridica` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_artigo_materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_artigo_materia` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `imagens` MEDIUMTEXT NULL DEFAULT NULL,
  `texto` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_metrica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_metrica` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `escala_valor_minimo` VARCHAR(255) NULL DEFAULT NULL,
  `escala_valor_medio` VARCHAR(255) NULL DEFAULT NULL,
  `escala_valor_maximo` VARCHAR(255) NULL DEFAULT NULL,
  `fator_peso_nenhum` INT(11) NULL DEFAULT NULL,
  `fator_peso_baixo` INT(11) NULL DEFAULT NULL,
  `fator_peso_medio` INT(11) NULL DEFAULT NULL,
  `fator_peso_alto` INT(11) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_artigo_materia_cidadao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_artigo_materia_cidadao` (
  `id_artigo_materia` INT(11) NOT NULL AUTO_INCREMENT,
  `id_cidadao_politica` INT(11) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_artigo_materia`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_status_registro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_status_registro` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` MEDIUMTEXT NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_partido_politico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_partido_politico` (
  `id` INT(11) NOT NULL,
  `numero_legenda` DOUBLE NULL,
  `sigla` VARCHAR(255) NULL DEFAULT NULL,
  `sigla_antecessora` VARCHAR(255) NULL DEFAULT NULL,
  `sigla_sucessora` VARCHAR(255) NULL DEFAULT NULL,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `nome_presidente` VARCHAR(255) NULL DEFAULT NULL,
  `id_cidadao_presidente` INT(11) NULL DEFAULT NULL,
  `site_oficial` VARCHAR(255) NULL DEFAULT NULL,
  `url_logo` MEDIUMTEXT NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `deferimento` DATETIME NULL DEFAULT NULL,
  `encerramento` DATETIME NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_partido_politico_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_cidadao_politica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_cidadao_politica` (
  `id` INT(11) NULL AUTO_INCREMENT,
  `nome_politico` VARCHAR(100) NULL DEFAULT NULL,
  `nome_civil` VARCHAR(100) NULL DEFAULT NULL,
  `cpf` INT(11) NULL DEFAULT NULL,
  `nascimento` DATETIME NULL DEFAULT NULL,
  `falecimento` DATETIME NULL DEFAULT NULL,
  `marcador` MEDIUMTEXT NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_foto` MEDIUMTEXT NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_cidadao_politica_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_sis_agente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_sis_agente` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_agente_suplente` INT(11) NULL,
  `id_cidadao_politica` INT(11) NOT NULL,
  `iniciais` VARCHAR(255) NULL,
  `login_codigo` VARCHAR(255) NOT NULL,
  `login_email` VARCHAR(255) NOT NULL,
  `registro_audit_login` INT(1) NOT NULL DEFAULT 1,
  `suplente_ativo` BIT(1) NULL DEFAULT NULL,
  `bloqueado` BIT(1) NULL DEFAULT NULL,
  `suplente_data_fim` DATETIME NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_sis_agente_pne_cidadao_politica1_idx` (`id_cidadao_politica` ASC),
  INDEX `fk_pne_sis_agente_pne_cidadao_politica2_idx` (`id_agente_suplente` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_atributo_meta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_atributo_meta` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_ref` INT(11) NULL DEFAULT NULL,
  `hq` VARCHAR(255) NULL DEFAULT NULL,
  `nome` MEDIUMTEXT NULL DEFAULT NULL,
  `descricao` MEDIUMTEXT NULL DEFAULT NULL,
  `origem_url` BIT(1) NULL DEFAULT NULL,
  `origem_tab_posicao_politico` BIT(1) NULL DEFAULT NULL,
  `origem_atr_SQL` BIT(1) NULL DEFAULT NULL,
  `query_atr_SQL` MEDIUMTEXT NULL DEFAULT NULL,
  `xml_dest_id` VARCHAR(255) NULL DEFAULT NULL,
  `xml_dest_prop_tag` VARCHAR(255) NULL DEFAULT NULL,
  `uso_posicao_politica` BIT(1) NULL DEFAULT NULL,
  `uso_posicao_social` BIT(1) NULL DEFAULT NULL,
  `url_fonte` MEDIUMTEXT NULL DEFAULT NULL,
  `ref_tabela` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_atributo_meta_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_cargo_politico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_cargo_politico` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `poder` VARCHAR(255) NULL DEFAULT NULL,
  `ordem` INT(11) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_cargo_politico_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `razao_social` VARCHAR(255) NULL DEFAULT NULL,
  `nome_fantasia` VARCHAR(255) NULL DEFAULT NULL,
  `id_empresa_segmento` INT(11) NULL DEFAULT NULL,
  `cnpj` DOUBLE NULL DEFAULT NULL,
  `site` VARCHAR(255) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `marcador` MEDIUMTEXT NULL DEFAULT NULL,
  `id_empresa_natureza` INT(11) NULL DEFAULT NULL,
  `id_empresa_grupo` INT(11) NULL DEFAULT NULL,
  `id_estado` INT(11) NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `url_logo` MEDIUMTEXT NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_empresa_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_empresa_meta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_empresa_meta` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` INT(11) NOT NULL,
  `id_atributo_meta` INT(11) NOT NULL,
  `valor_atributo` VARCHAR(255) NULL DEFAULT NULL,
  `data_referencia` DATETIME NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` VARCHAR(255) NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `ajuste_json` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `id_atributo_meta`, `id_empresa`),
  INDEX `fk_pne_empresa_meta_pne_atributo_meta1_idx` (`id_atributo_meta` ASC),
  INDEX `fk_pne_empresa_meta_pne_status_registro1_idx` (`id_status_registro` ASC),
  INDEX `fk_pne_empresa_meta_pne_empresa1_idx` (`id_empresa` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_estado` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `sigla` VARCHAR(2) NULL DEFAULT NULL,
  `nome` VARCHAR(30) NULL DEFAULT NULL,
  `capital` VARCHAR(255) NULL DEFAULT NULL,
  `gentilico` VARCHAR(60) NULL DEFAULT NULL,
  `regiao_brasileira` VARCHAR(255) NULL DEFAULT NULL,
  `url_img_bandeira` VARCHAR(255) NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_estado_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_i_formulario_coleta_google`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_i_formulario_coleta_google` (
  `Identificação` INT(11) NULL DEFAULT NULL,
  `Carimbo de data-hora` DATETIME NULL DEFAULT NULL,
  `Qual é o seu nome` VARCHAR(255) NULL DEFAULT NULL,
  `Qual é o seu e-mail` VARCHAR(255) NULL DEFAULT NULL,
  `Qual é o nome de batismo` VARCHAR(255) NULL DEFAULT NULL,
  `Em que estado nasceu` VARCHAR(255) NULL DEFAULT NULL,
  `Foi eleito por qual estado` VARCHAR(255) NULL DEFAULT NULL,
  `A qual partido pertence` VARCHAR(255) NULL DEFAULT NULL,
  `Coloque o link da foto oficial` MEDIUMTEXT NULL DEFAULT NULL,
  `Qual é a ocupação política no momento` VARCHAR(255) NULL DEFAULT NULL,
  `Tem parentes na política` VARCHAR(255) NULL DEFAULT NULL,
  `Tem processos na Justiça` MEDIUMTEXT NULL DEFAULT NULL,
  `Observação críticas ou sugestões` MEDIUMTEXT NULL DEFAULT NULL,
  `Pretende ser candidato à qual cargo` MEDIUMTEXT NULL DEFAULT NULL,
  `Origem_link sobre as informações` MEDIUMTEXT NULL DEFAULT NULL,
  `Nome eleitoral` VARCHAR(255) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_compara_dado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_compara_dado` (
  `id_info_compara_mascara` INT(11) NULL DEFAULT NULL,
  `registro_processamento` VARCHAR(30) NULL DEFAULT NULL,
  `json_atributo_metrica` MEDIUMTEXT NULL DEFAULT NULL,
  `valor_atributo_col_1` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_2` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_3` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_4` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_5` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_6` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_7` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_8` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_9` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_10` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_11` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_12` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_13` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_14` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_15` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_16` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_17` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_18` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_19` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_20` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_21` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_22` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_23` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_24` VARCHAR(255) NULL DEFAULT NULL,
  `valor_atributo_col_25` VARCHAR(255) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_info_layout_mascara_dado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_info_layout_mascara_dado` (
  `id_info_layout_mascara` INT(11) NOT NULL AUTO_INCREMENT,
  `id_cidadao_politica` INT(11) NULL DEFAULT NULL,
  `id_posicao_politica` INT(11) NULL DEFAULT NULL,
  `valor_atributo` MEDIUMTEXT NULL DEFAULT NULL,
  `xml_dest_id` VARCHAR(255) NULL DEFAULT NULL,
  `xml_dest_prop_tag` VARCHAR(255) NULL DEFAULT NULL,
  `sql` MEDIUMTEXT NULL DEFAULT NULL,
  `erro` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_info_layout_mascara`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_legislatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_legislatura` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_cargo_politico` INT(11) NOT NULL DEFAULT NULL,
  `legislatura` INT(11) NULL DEFAULT NULL,
  `Periodo Ini` DATETIME NULL DEFAULT NULL,
  `Periodo Fim` DATETIME NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `id_cargo_politico`),
  INDEX `fk_pne_legislatura_pne_cargo_politico1_idx` (`id_cargo_politico` ASC),
  INDEX `fk_pne_legislatura_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_posicao_empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_posicao_empresa` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_cidadao_politica` INT(11) NOT NULL DEFAULT NULL,
  `id_empresa` INT(11) NOT NULL DEFAULT NULL,
  `id_vinculo_posicao` INT(11) NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `url_imagem` VARCHAR(255) NULL DEFAULT NULL,
  `id_afastamento` INT(11) NULL DEFAULT NULL,
  `id_status_posicao` INT(11) NULL DEFAULT NULL,
  `data_inicio` DATETIME NULL DEFAULT NULL,
  `data_termino` DATETIME NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `id_empresa`, `id_cidadao_politica`),
  INDEX `fk_pne_posicao_empresa_pne_status_registro1_idx` (`id_status_registro` ASC),
  INDEX `fk_pne_posicao_empresa_pne_empresa1_idx` (`id_empresa` ASC),
  INDEX `fk_pne_posicao_empresa_pne_cidadao_politica1_idx` (`id_cidadao_politica` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_posicao_empresa_meta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_posicao_empresa_meta` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_posicao_empresa` INT(11) NOT NULL,
  `id_atributo_meta` INT(11) NOT NULL DEFAULT NULL,
  `valor_atributo` VARCHAR(255) NULL DEFAULT NULL,
  `data_referencia` DATETIME NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` VARCHAR(255) NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `ajuste_json` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `id_atributo_meta`, `id_posicao_empresa`),
  INDEX `fk_pne_posicao_empresa_meta_pne_atributo_meta1_idx` (`id_atributo_meta` ASC),
  INDEX `fk_pne_posicao_empresa_meta_pne_posicao_empresa1_idx` (`id_posicao_empresa` ASC),
  INDEX `fk_pne_posicao_empresa_meta_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_status_posicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_status_posicao` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_status_posicao_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_status_afastamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_status_afastamento` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pne_status_afastamento_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_posicao_politica_exe_leg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_posicao_politica_exe_leg` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_cidadao_politica` INT(11) NOT NULL DEFAULT NULL,
  `id_cargo_politico` INT(11) NOT NULL,
  `id_legislatura` INT(11) NOT NULL DEFAULT NULL,
  `id_estado` INT(11) NOT NULL DEFAULT NULL,
  `id_partido_politico` INT(11) NOT NULL DEFAULT NULL,
  `id_status_posicao` INT(11) NOT NULL,
  `id_status_afastamento` INT(11) NOT NULL,
  `data_inicio` DATETIME NULL DEFAULT NULL,
  `data_termino` DATETIME NULL DEFAULT NULL,
  `url_fontes` MEDIUMTEXT NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `url_foto_oficial` VARCHAR(255) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `id_legislatura`, `id_cargo_politico`, `id_estado`, `id_status_posicao`, `id_cidadao_politica`, `id_partido_politico`, `id_status_afastamento`),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_status_registro1_idx` (`id_status_registro` ASC),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_legislatura1_idx` (`id_legislatura` ASC),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_cargo_politico1_idx` (`id_cargo_politico` ASC),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_estado1_idx` (`id_estado` ASC),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_status_posicao1_idx` (`id_status_posicao` ASC),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_cidadao_politica1_idx` (`id_cidadao_politica` ASC),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_partido_politico1_idx` (`id_partido_politico` ASC),
  INDEX `fk_pne_posicao_politica_exe_leg_pne_status_afastamento1_idx` (`id_status_afastamento` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_pos_politica_leg_exe_meta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_pos_politica_leg_exe_meta` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_posicao_politica_leg_exe` INT(11) NOT NULL,
  `id_atributo_meta` INT(11) NOT NULL DEFAULT NULL,
  `valor_atributo` VARCHAR(255) NULL DEFAULT NULL,
  `data_referencia` DATETIME NULL DEFAULT NULL,
  `notas` MEDIUMTEXT NULL DEFAULT NULL,
  `url_fontes` VARCHAR(255) NULL DEFAULT NULL,
  `url_conteudo` MEDIUMTEXT NULL DEFAULT NULL,
  `ajuste_json` MEDIUMTEXT NULL DEFAULT NULL,
  `id_status_registro` INT(11) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `alterado_em` DATETIME NULL DEFAULT NULL,
  `criado_em` DATETIME NULL DEFAULT NULL,
  `alterado_por` VARCHAR(255) NULL DEFAULT NULL,
  `criado_por` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `id_posicao_politica_leg_exe`, `id_atributo_meta`),
  INDEX `fk_pne_pos_politica_leg_exe_meta_pne_posicao_politica_exe_l_idx` (`id_posicao_politica_leg_exe` ASC),
  INDEX `fk_pne_pos_politica_leg_exe_meta_pne_atributo_meta1_idx` (`id_atributo_meta` ASC),
  INDEX `fk_pne_pos_politica_leg_exe_meta_pne_status_registro1_idx` (`id_status_registro` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_a1d873_opsdev`.`pne_sis_tab_h_reg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_a1d873_opsdev`.`pne_sis_tab_h_reg` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `tabela` VARCHAR(255) NULL DEFAULT NULL,
  `coluna` VARCHAR(255) NULL DEFAULT NULL,
  `acao` VARCHAR(1) NULL DEFAULT NULL,
  `acao_em` DATETIME NULL DEFAULT NULL,
  `acao_por` VARCHAR(255) NULL DEFAULT NULL,
  `tipo_dado` VARCHAR(255) NULL DEFAULT NULL,
  `pk` VARCHAR(255) NULL DEFAULT NULL,
  `versao_registro` INT(11) NULL DEFAULT NULL,
  `VARCHAR_NEW` MEDIUMTEXT NULL DEFAULT NULL,
  `VARCHAR_OLD` MEDIUMTEXT NULL DEFAULT NULL,
  `NUMBER_NEW` BIGINT(20) NULL DEFAULT NULL,
  `NUMBER_OLD` BIGINT(20) NULL DEFAULT NULL,
  `DATE_NEW` DATETIME NULL DEFAULT NULL,
  `DATE_OLD` DATETIME NULL DEFAULT NULL,
  `CLOB_NEW` MEDIUMTEXT NULL DEFAULT NULL,
  `CLOB_OLD` MEDIUMTEXT NULL DEFAULT NULL,
  `BLOB_NEW` MEDIUMTEXT NULL DEFAULT NULL,
  `BLOB_OLD` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
