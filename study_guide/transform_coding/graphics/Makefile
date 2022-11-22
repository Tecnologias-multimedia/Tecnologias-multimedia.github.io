include $(MAKEFILE_TEMPLATES)/fig2pdf_rule/Makefile
include $(MAKEFILE_TEMPLATES)/pdf2svg_rule/Makefile
include $(MAKEFILE_TEMPLATES)/tex2pdf_rule/Makefile

# Original files
FIGs := $(wildcard *.fig)
TEXs := $(wildcard *.tex)

# Target files
PDFs += $(FIGs:%.fig=%.pdf)
TMPs += $(PDFs)
SVGs += $(FIGs:%.fig=%.svg)
TMPs += $(SVGs)

PDFs += $(TEXs:%.tex=%.pdf)
TMPs += $(PDFs)
SVGs += $(TEXs:%.tex=%.svg)
TMPs += $(SVGs)

#topologies.pdf: topologies.tex full-mesh.pdf star.pdf ring.pdf
#TMPs += topologies.pdf

#STS.pdf:	STS.tex splitters_tracker.pdf load_balancer.pdf STS_peer.pdf STS_splitter.pdf
#TMPs += STS.pdf

#flooding_example.pdf:	team_0.pdf team_1.pdf team_2.pdf team_3.pdf team_4.pdf team_5.pdf team_6.pdf team_7.pdf team_8.pdf team_9.pdf team_10.pdf team_11.pdf team_12.pdf team_13.pdf
#TMPs += flooding_example.png

#joining.pdf:	joining.tex DBS_splitter_join.pdf DBS_peer_join.pdf
#TMPs += joining.pdf

#leaving.pdf:	leaving.tex splitter_serve_leaving_peers.pdf peer_leaving.pdf DBS_splitter_leaving.pdf
#TMPs += leaving.pdf

#chunk_generation_and_flooding.pdf:	chunk_generation_and_flooding.tex splitter_chunk_generation.pdf peer_chunk_flooding.pdf
#TMPs += chunk_generation_and_flooding.png

default:	$(TMPs)

info:
	@echo $(TMPs)

clean:
	rm -f $(TMPs)
