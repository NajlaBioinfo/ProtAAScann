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

#MODULE: Ploting protein sequence processing.
#_______________________________________________________________




########################
#SOURCING SCRIPTS
########################
#Scripts dealing with sequence input
source("src/processcripts/proces_InputSeq.R")


#Function : Plot 1
#-__ AA counts : barplot, ggplot2 __
ploting_seq_fn <- function(seq_input) {
  reformed_seq<-unlist(strsplit(trait_seq_fn(seq_input), split=""))
  hhsw<-as.data.frame(table(reformed_seq))
  p <- ggplot(hhsw, aes(hhsw$reformed_seq, hhsw$Freq)) + 
    geom_bar(stat = "identity", aes(fill = hhsw$Freq), position = "dodge")+
    xlab("Amino Acid") + ylab("Count") +
    ggtitle("Protein amino acid count") +
    scale_fill_gradient("Count", low = "green", high = "red")
  theme_bw()
  return (p)
}


#Function : Plot 2
#-__ AA class : pie, ggplot __
ploting_aa_class_fn <- function(seq_input) {
  # Pie Chart with Percentages
  aa_class_df <- aacomp_seq_fn(seq_input)
  slices <- aa_class_df$Number
  lbls <- rownames(aa_class_df)
  pct <- round(slices/sum(slices)*100)
  lbls <- paste(lbls, pct) # add percents to labels
  lbls <- paste(lbls,"%",sep="") # ad % to labels
  pieaaclass <- pie(slices,labels = lbls, col=rainbow(length(slices)),
                    main="Pie Chart of AA class") 
  return (pieaaclass)
}

#Function : Plot 2aa
ploting_aa_class_gg_fn <- function(seq_input) {
  # Pie Chart with Percentages
  aa_class_df <- aacomp_seq_fn(seq_input)
  slices <- aa_class_df$Number
  lbls <- rownames(aa_class_df)
  pct <- round(slices/sum(slices)*100)
  lbls <- paste(lbls, pct) # add percents to labels
  lbls <- paste(lbls,"%",sep="") # ad % to labels
  df <- data.frame(
    group = lbls,
    value = slices
  )
  head(df)
 
  # Bar plot
  bp<- ggplot(df, aes(x="", y=value, fill=group))+
    geom_bar(width = 1, stat = "identity")
  
  #__OK
  pie <- bp + coord_polar("y", start=0)
  
  pieaaclassgg <- pie + 
    scale_colour_gradientn(colours=rainbow(length(slices)))+
    ggtitle("Pie Chart of AA class")+
    xlab("Groups") +
    ylab("Counts")+
    #geom_label_repel(aes(label = lbls), size=5, show.legend = F, nudge_x = 1) +
    guides(fill = guide_legend(title = "Group"))
  
  return (pieaaclassgg)
}

#Function : Plot 3
#-__ AA class : pie, ggplot __
# ploting __ aa __ mb position prediction
ploting_aa_mbpsopred_fn <- function(seq_input) {
  # Pie Chart with Percentages
  seq_to_treat <- trait_seq_fn(seq_input)
  mb_pos_pred <- membpos(seq_to_treat,angle = 50)
  df_mb_pos_pred <- (as.data.frame(mb_pos_pred))

  pieaambpred <- ggplot(df_mb_pos_pred,aes(x=df_mb_pos_pred$MembPos,fill="navy")) +
    geom_bar() +
    ggtitle("SubSequence membrane position (Predicted)")+
    theme(legend.title = element_blank()) +
    theme(legend.position='none') + 
    xlab("Membrane position")
  return (pieaambpred)
}