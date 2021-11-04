FIGURES = dbus-related-libraries.pdf \
          dbus-related-libraries_1.pdf \
          dbus-related-libraries_2.pdf \
          dbus-related-libraries_3.pdf \
          dbus-related-libraries_4.pdf \
          dbus-related-libraries_5.pdf \
          dbus-related-libraries_6.pdf

%.pdf: %.odg
	soffice --headless --convert-to pdf $<

presentation.pdf: ${FIGURES} presentation.lyx
	lyx -batch --export pdf $<

clean:
	rm *.pdf

.PHONY:
	clean
