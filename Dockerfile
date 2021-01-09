FROM alpine:3.12

RUN apk add --no-cache vsftpd \
&& mkdir -p -m 0777 /var/lib/ftp/uploads \
&& chown ftp:ftp /var/lib/ftp/uploads

EXPOSE 20:20 21:21 1024-1048:1024-1048

CMD ["vsftpd", \ 
"-oanonymous_enable=YES", \
"-oanon_upload_enable=YES", \
"-oanon_mkdir_write_enable=YES", \
"-oanon_other_write_enable=YES", \
"-olocal_enable=NO", \
"-owrite_enable=yes", \
"-opasv_enable=YES", \
"-opasv_min_port=1024", \
"-opasv_max_port=1048", \
"-olisten=YES", \
"-obackground=NO", \
"-oconnect_from_port_20=YES", \
"-oseccomp_sandbox=NO" \
]

