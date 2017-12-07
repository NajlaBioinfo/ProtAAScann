#!/usr/local/bin/R
#//////////////////////////////////////////////////////////
#__author__ = "BEN HASSINE Najla(bhndevtools@gmail.com)"#/
#__version__ = "1.0.0"				                   #/
#__copyright__ = "Copyright(c) 2017 BHNtools"    #/
#__license__ = "BHNtools"			                 #/
#/////////////////////////////////////////////////////


#_______________________________________________________________
#R version 3.4.2 (2017-09-28) -- "Short Summer"
#Copyright (C) 2017 The R Foundation for Statistical Computing
#Platform: x86_64-pc-linux-gnu (64-bit)
#"Debian GNU/Linux 9 (stretch)

#PROGRAMME: BHNtools::ShinyApp
#Web API GUI :: Generate Interactive App with Shiny package.

#MODULE: Protein sequence processing.
#_______________________________________________________________



## Function :: Traiting Sequence input.
trait_seq_fn <- function(seq_input) {
  seq_upperCasse <- toupper(seq_input)
  seq_trimmed <- str_trim(seq_upperCasse)
  seq_to_treat <-str_replace_all(seq_trimmed, "[\r\n]" , "")
  return (seq_to_treat)
}


## Function :: Counting seq length.
length_seq_fn <- function(seq_input) {
  length_seq=0
  strlg <- str_length(seq_input)
  return (strlg)
}

## Function :: pI.
pI_seq_fn <- function(seq_input) {
  pI_seq=0
  pI <-pI(seq_input, pKscale = "EMBOSS")
  pI_val <- round(pI,digits = 3)
  return (pI_val)
}

## Function :: Mw_f
MwF_seq_fn <- function(seq_input) {
  MwF_seq=0
  MwF <- mw(seq_input,monoisotopic = FALSE)
  MwF_val <- round(MwF,digits = 3)
  return (MwF_val)
}


## Function :: Mw_t
MwT_seq_fn <- function(seq_input) {
  MwT_seq=0
  MwT <- mw(seq_input,monoisotopic = TRUE)
  MwT_val <- round(MwT,digits = 3)
  return (MwT_val)
}


## Function :: Aliphatic index
aIdx_seq_fn <- function(seq_input) {
  aliphIdx=0
  aliphIdx <- aIndex(seq_input)
  aliphIdx_val <- round(aliphIdx,digits = 3)
  return (aliphIdx_val)
}



## Function :: hydrophobicity index
hydrophobicity_seq_fn <- function(seq_input) {
  hydrophobicity_seq=0
  hydrophobicity_seq <- hydrophobicity(seq = seq_input, scale = "Zimmerman")
  hydrophobicity_val  <- round(hydrophobicity_seq,digits = 3)
  return (hydrophobicity_val)
}


## Function :: instability index
instabilityidx_seq_fn <- function(seq_input) {
  instaidx_seq=0
  if (seq_input == "")
  {
    return (instaidx_seq)
  }
  else
  {
    instaidx_seq <- instaIndex(seq_input)
    instaidx_val  <- round(instaidx_seq,digits = 3)
    return (instaidx_val)}
}


## Function :: antibacterial index
bomanidx_seq_fn <- function(seq_input) {
  boman_seq=0
  if (seq_input == "")
  {
    return (boman_seq)
  }
  else
  {
    boman_seq <- boman(seq_input)
    boman_seq_val  <- round(boman_seq,digits = 3)
    return (boman_seq_val)}
}

## Function :: Lipophilicity
Lipophilicity_seq_fn <- function(seq_input) {
  Lipophilicity_seq=0
  zscore_seq <- zScales(seq=seq_input)
  Lipophilicity_seq <- zscore_seq[[1]][1]
  Lipophilicity_val <- round(Lipophilicity_seq,digits = 3)
  return (Lipophilicity_val)
}