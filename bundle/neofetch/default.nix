{ pkgs, ...}:

{
  home.packages = with pkgs; [ neofetch ];
  home.file.".config/neofetch/config.conf".text = ''
    print_info() {
      info "Users" users
      info "OS" distro
      info "Host" model
      info "Kernel" kernel
      info "Uptime" uptime
      info "Packages" packages
      info "Shell" shell
      info "Monitor" resolution
      info "DE" de
      info "WM" wm
      info "WM Theme" wm_theme
      info "Theme" theme
      info "Icons" icons
      info "Terminal" term
      info "Font" term_font
      info "CPU" cpu
      info "GPU" gpu
      info "Memory" memory

      info underline
      # info "GPU Driver" gpu_driver  # Linux/macOS only
      # info "CPU Usage" cpu_usage
      # info "Disk" disk
      # info "Battery" battery
      # info "Font" font
      # info "Song" song
      # [[ "$player" ]] && prin "Music Player" "$player"
      # info "Local IP" local_ip
      # info "Public IP" public_ip
      # info "Locale" locale  # This only works on glibc systems.

      info cols
    }
  title_fqdn="off"
  kernel_shorthand="on"
  distro_shorthand="off"
  os_arch="on"
  uptime_shorthand="on"
  memory_percent="off"
  package_managers="on"
  shell_path="off"
  shell_version="on"
  speed_type="bios_limit"
  speed_shorthand="off"
  cpu_brand="on"
  cpu_speed="on"
  cpu_cores="logical"
  cpu_temp="off"
  gpu_brand="on"
  gpu_type="all"
  refresh_rate="off"
  gtk_shorthand="off"
  gtk2="on"
  gtk3="on"
  public_ip_host="http://ident.me"
  public_ip_timeout=2
  de_version="off"
  disk_show=('/')
  disk_subtitle="mount"
  disk_percent="on"
  music_player="auto"
  song_format="%artist% - %album% - %title%"
  song_shorthand="off"
  mpc_args=()
  colors=(distro)


  # Text Options
  bold="on"
  underline_enabled="on"
  underline_char="---"
  separator=":"


  # Color Blocks
  block_range=(0 15)
  color_blocks="on"
  block_width=3
  block_height=1
  col_offset="auto"

  # Progress Bars
  bar_char_elapsed="-"
  bar_char_total="="
  bar_border="on"
  bar_length=15
  bar_color_elapsed="distro"
  bar_color_total="distro"

  # Info display
  cpu_display="off"
  memory_display="off"
  battery_display="off"
  disk_display="off"

  # Backend Settings

  # Image backend.
  image_backend="ascii"

  # Image Source
  image_source="auto"

  # Ascii Options
  ascii_distro="auto"

  # Ascii Colors
  ascii_colors=(distro)

  # Bold ascii logo
  ascii_bold="on"

  # Image Options
  image_loop="off"

  crop_mode="normal"
  crop_offset="center"
  image_size="400px"
  gap=2
  yoffset=0
  xoffset=0
  background_color=
  stdout="off"
  '';
}
