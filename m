Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51247497395
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239224AbiAWRe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:34:58 -0500
Received: from asav21.altibox.net ([109.247.116.8]:50622 "EHLO
        asav21.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbiAWRe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jan 2022 12:34:58 -0500
X-Greylist: delayed 553 seconds by postgrey-1.27 at vger.kernel.org; Sun, 23 Jan 2022 12:34:57 EST
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav21.altibox.net (Postfix) with ESMTPSA id 09FFA8007B;
        Sun, 23 Jan 2022 18:25:41 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, thierry.reding@gmail.com
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH 0/3] drm/panel: Add MIPI DBI compatible SPI driver
Date:   Sun, 23 Jan 2022 18:25:17 +0100
Message-Id: <20220123172520.48741-1-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ZLv5Z0zb c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=VwQbUJbxAAAA:8 a=SJz97ENfAAAA:8
        a=1LP9cTVIc-Moe54IzosA:9 a=QEXdDO2ut3YA:10 a=AjGcO6oz07-iQ99wixmX:22
        a=vFet0B0WnEQeilDPIY6i:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This patchset adds a driver that will work with most MIPI DBI compatible
SPI panels out there.

It's a follow up on 'drm/tiny/st7735r: Match up with staging/fbtft
driver'[1] which aimed at making the st7735r driver work with all panels
adding DT properties.

Maxime gave[2] a good overview of the situation with these displays and
proposed to make a driver that works with all MIPI DBI compatible
controllers and use a firmware file to provide the controller setup for
a particular panel.

Noralf.

[1] https://lore.kernel.org/dri-devel/20211124150757.17929-1-noralf@tronnes.org/
[2] https://lore.kernel.org/dri-devel/20211129093946.xhp22mvdut3m67sc@houat/


Noralf Trønnes (3):
  dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
  drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
  drm/panel: Add MIPI DBI compatible SPI driver

 .../display/panel/panel-mipi-dbi-spi.yaml     |  69 ++++
 MAINTAINERS                                   |   7 +
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-mipi-dbi.c        | 385 ++++++++++++++++++
 include/drm/drm_mipi_dbi.h                    |   2 +
 6 files changed, 475 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-mipi-dbi.c

-- 
2.33.0

