FROM archlinux/base
LABEL maintainer="bofhbug"
#CMD /bin/bash
#TAG latest
#ADD https://raw.githubusercontent.com/finalduty/configs/master/.vimrc /root/
#ADD https://raw.githubusercontent.com/finalduty/configs/master/.bashrc /root/

RUN pacman -Sy --noconfirm bash-completion vim lsof tcpdump poppler; pacman -Scc --noconfirm &>/dev/null

ENTRYPOINT ["/bin/bash"]
