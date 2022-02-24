Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28C5E4C2FA3
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 16:28:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235753AbiBXP2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 10:28:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236456AbiBXP2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 10:28:09 -0500
Received: from asav22.altibox.net (asav22.altibox.net [109.247.116.9])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BBF31BA14F
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 07:27:36 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav22.altibox.net (Postfix) with ESMTPSA id E077523B79;
        Thu, 24 Feb 2022 16:27:33 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v5 0/5] drm/tiny: Add MIPI DBI compatible SPI driver
Date:   Thu, 24 Feb 2022 16:27:03 +0100
Message-Id: <20220224152708.14459-1-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=KbX8TzQD c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8
        a=XqjdhIIK1VNfZnpq3w4A:9 a=QEXdDO2ut3YA:10 a=AjGcO6oz07-iQ99wixmX:22
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This patchset adds a driver that will work with most MIPI DBI compatible
SPI panels out there.

It can replace the SPI interface support in these drivers:

$ grep -lr MIPI_DCS drivers/staging/fbtft/ | grep -v "-" | uniq | sort
drivers/staging/fbtft/fb_hx8340bn.c
drivers/staging/fbtft/fb_hx8353d.c
drivers/staging/fbtft/fb_hx8357d.c
drivers/staging/fbtft/fb_ili9163.c
drivers/staging/fbtft/fb_ili9340.c
drivers/staging/fbtft/fb_ili9341.c
drivers/staging/fbtft/fb_ili9481.c
drivers/staging/fbtft/fb_ili9486.c
drivers/staging/fbtft/fb_s6d02a1.c
drivers/staging/fbtft/fb_st7735r.c
drivers/staging/fbtft/fb_st7789v.c
drivers/staging/fbtft/fb_tinylcd.c

Note that the MIPI DBI parallel interface supported by fbtft does not
yet exist in DRM.

Maxime gave[1] a good overview of the situation with these displays and
proposed to make a driver that works with all MIPI DBI compatible
controllers and use a firmware file to provide the controller setup for
a particular panel.

Changes since version 4:
- Add sainsmart18 to compatible items (Rob)
- Expand write-only description (Sam)
- kconfig: s/DRM_KMS_CMA_HELPER/DRM_GEM_CMA_HELPER/ (Sam)
- kconfig: Add select VIDEOMODE_HELPERS (Sam)
- kconfig: Add wiki url in the description (Sam)
- Split out and use of_get_drm_panel_display_mode()(Sam)
- Only use the first compatible to look for a firmware file since the
  binding mandates 2 compatibles.
- Make having a firmware file mandatory so we can print an error
  message if it's missing to improve the user experience. It's very
  unlikely that a controller doesn't need to be initialized and if
  it doesn't, it's possible to have a firmware file containing only
  a DCS NOP.

See wiki[2] for a script to make command firmware files.

Noralf.

[1] https://lore.kernel.org/dri-devel/20211129093946.xhp22mvdut3m67sc@houat/
[2] https://github.com/notro/panel-mipi-dbi/wiki


Noralf Trønnes (5):
  dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
  drm/modes: Remove trailing whitespace
  drm/modes: Add of_get_drm_panel_display_mode()
  drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
  drm/tiny: Add MIPI DBI compatible SPI driver

 .../display/panel/panel-mipi-dbi-spi.yaml     | 127 ++++++
 MAINTAINERS                                   |   8 +
 drivers/gpu/drm/drm_modes.c                   |  51 ++-
 drivers/gpu/drm/tiny/Kconfig                  |  15 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/panel-mipi-dbi.c         | 398 ++++++++++++++++++
 include/drm/drm_mipi_dbi.h                    |   8 +
 include/drm/drm_modes.h                       |   8 +
 8 files changed, 615 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
 create mode 100644 drivers/gpu/drm/tiny/panel-mipi-dbi.c

-- 
2.33.0

