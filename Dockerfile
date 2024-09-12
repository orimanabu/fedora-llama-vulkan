FROM registry.fedoraproject.org/fedora:40
RUN dnf install -y dnf-plugins-core git gcc gcc-c++ make cmake git vim-enhanced ccache glslc glslang
#RUN dnf install -y vim-enhanced file procps-ng strace
RUN dnf install -y vulkan-loader vulkan-loader-devel vulkan-tools vulkan-headers

ENV mesa_version=24.1.5
RUN dnf copr enable -y slp/mesa-krunkit
RUN dnf install -y mesa-dri-drivers-${mesa_version} mesa-filesystem-${mesa_version} mesa-libOpenCL-${mesa_version} mesa-libgbm-${mesa_version} mesa-libglapi-${mesa_version} mesa-va-drivers-${mesa_version} mesa-vulkan-drivers-${mesa_version}

RUN git clone https://github.com/ggerganov/llama.cpp.git /root/llama.cpp
RUN cd /root/llama.cpp && git checkout 56d03d92be57f5880b9ed94542d87bb6effae31f && cmake -B build -DLLAMA_VULKAN=1 && cd build && make install && rm -rf /root/llama.cpp
COPY do.sh /usr/local/bin/
