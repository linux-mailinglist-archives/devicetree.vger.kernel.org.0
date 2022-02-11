Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 822B54B26D5
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 14:12:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243510AbiBKNMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 08:12:19 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243584AbiBKNMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 08:12:17 -0500
Received: from asav21.altibox.net (asav21.altibox.net [109.247.116.8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7C00FC8
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 05:12:14 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav21.altibox.net (Postfix) with ESMTPSA id CABEF80021;
        Fri, 11 Feb 2022 14:04:58 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, thierry.reding@gmail.com
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v3 0/3] drm/panel: Add MIPI DBI compatible SPI driver
Date:   Fri, 11 Feb 2022 14:04:31 +0100
Message-Id: <20220211130434.20732-1-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=Adef4UfG c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8
        a=Fm3OTh2PKvcfmEjY7C4A:9 a=QEXdDO2ut3YA:10 a=AjGcO6oz07-iQ99wixmX:22
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

Maxime gave[1] a good overview of the situation with these displays and
proposed to make a driver that works with all MIPI DBI compatible
controllers and use a firmware file to provide the controller setup for
a particular panel.

I have now made a script[2] that can create the firmware file, example
in the wiki[3]

Main change since version 2:
- Use Device Tree for all properties (Maxime)

The MIPI DPI specification has optional support for DPI where the
controller is configured over DBI. Because of this I put the driver in
drm/panel so it could be extended in the future to support
panel-mipi-dpi-spi. I have now looked at this more closely and the only
thing that can be shared between the two are the firmware command
functions. These functions can be moved to the drm_mipi_dbi_helper for
sharing. Now that I know that there won't be one driver module that
supports both use cases, I'm thinking of moving the driver to drm/tiny
where the other drivers of its kind are located. I'll move the driver in
the next version of the patchset unless someone have reasons for leaving
it in drm/panel.

Noralf.

[1] https://lore.kernel.org/dri-devel/20211129093946.xhp22mvdut3m67sc@houat/
[2] https://github.com/notro/panel-mipi-dbi/blob/main/mipi-dbi-cmd
[3] https://github.com/notro/panel-mipi-dbi/wiki


Noralf Trønnes (3):
  dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
  drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
  drm/panel: Add MIPI DBI compatible SPI driver

 .../display/panel/panel-mipi-dbi-spi.yaml     | 124 ++++++
 MAINTAINERS                                   |   8 +
 drivers/gpu/drm/panel/Kconfig                 |  13 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-mipi-dbi.c        | 413 ++++++++++++++++++
 include/drm/drm_mipi_dbi.h                    |   8 +
 6 files changed, 567 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-mipi-dbi.c

-- 
2.33.0

