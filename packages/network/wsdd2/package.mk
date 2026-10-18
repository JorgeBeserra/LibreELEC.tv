# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="wsdd2"
PKG_VERSION="1.8.7"
PKG_SHA256="420c078f809b8c1a834b5ef9ad195fde6116904166cf766544027e1322acceca"
PKG_URL="https://mirror.slackware.jp/slackware/slackware-current/source/n/wsdd2/wsdd2-${PKG_VERSION}.tar.gz"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/Netgear/wsdd2/"
PKG_DEPENDS_TARGET="make:host gcc:host"
PKG_LONGDESC="WSD/LLMNR Discovery/Name Service Daemon"
PKG_BUILD_FLAGS="+size"

post_install() {
  enable_service wsdd2.service
}
