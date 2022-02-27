Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 318C54C5B37
	for <lists+devicetree@lfdr.de>; Sun, 27 Feb 2022 13:47:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbiB0MsW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Feb 2022 07:48:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbiB0MsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Feb 2022 07:48:20 -0500
Received: from asav21.altibox.net (asav21.altibox.net [109.247.116.8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02CCDAE73
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 04:47:41 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav21.altibox.net (Postfix) with ESMTPSA id 59C7C80057;
        Sun, 27 Feb 2022 13:47:37 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v6 0/5] drm/tiny: Add MIPI DBI compatible SPI driver
Date:   Sun, 27 Feb 2022 13:47:08 +0100
Message-Id: <20220227124713.39766-1-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=Adef4UfG c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=RFe_aE2YmaUHG6hxem0A:9
        a=QEXdDO2ut3YA:10
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

One change this time: Fix indentation in the DT binding.

All patches are reviewed now so I will apply this after Rob's bot have
looked at the binding.

Thanks for reviewing!

Noralf.


Noralf Trønnes (5):
  dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
  drm/modes: Remove trailing whitespace
  drm/modes: Add of_get_drm_panel_display_mode()
  drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
  drm/tiny: Add MIPI DBI compatible SPI driver

 .../display/panel/panel-mipi-dbi-spi.yaml     | 126 ++++++
 MAINTAINERS                                   |   8 +
 drivers/gpu/drm/drm_modes.c                   |  51 ++-
 drivers/gpu/drm/tiny/Kconfig                  |  15 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/panel-mipi-dbi.c         | 398 ++++++++++++++++++
 include/drm/drm_mipi_dbi.h                    |   8 +
 include/drm/drm_modes.h                       |   8 +
 8 files changed, 614 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
 create mode 100644 drivers/gpu/drm/tiny/panel-mipi-dbi.c

-- 
2.33.0

