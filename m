Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 630C7285641
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 03:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726447AbgJGBZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 21:25:26 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39244 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726605AbgJGBZ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 21:25:26 -0400
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3BDB21452;
        Wed,  7 Oct 2020 03:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602033924;
        bh=w9uEQ9UEo2C17nqyobsC/UZM1w1x/x2vsQZmInDHsl8=;
        h=From:To:Cc:Subject:Date:From;
        b=nG9KaJndTj+WWZJ+uRyrE2/jYANpq4AtgN1P+zzmu/yqP0IXoO1n+bM/dlynExHIC
         j1wPnOi1byRBDDf8DFzP2qKFl1CEmqGRaIie3Pf/QECU5H5m5Bmd/Mdyvhb5r0g0vf
         lHZLr3T+G9FtbJajcdQFxKO1JEPcLfs2q6Tg4NDM=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Stefan Agner <stefan@agner.ch>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/7] drm: mxsfb: Allow overriding bus width
Date:   Wed,  7 Oct 2020 04:24:31 +0300
Message-Id: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patch series adds support to the mxsfb driver for bus width
override. The need came from a hardware platform where a 18-bpp panel
had the R[5:0], G[5:0] and B[5:0] signals connected to LCD_DATA[7:2],
LCD_DATA[15:10] and LCD_DATA[23:18] instead of LCD_DATA[5:0],
LCD_DATA[11:6] and LCD_DATA[17:12]. The bus width, automatically
configured to 18 by querying the panel, is incorrect in this case, and
needs to be set to 24.

To solve this issue, a new bus-width DT property is added to the mxsfb
DT binding. Patch 1/7 first converts the binding to YAML, with a fix for
the compatible string values in 2/7. Patch 3/7 then adds the new
property.

Patches 4/7 to 5/7 then fix the DT sources to match the LCDIF bindings,
as I noticed during the conversion that the compatible strings were
badly managed (see patch 2/7 for a longer explanation). Patch 6/7 drops
an unused clock from DT sources.

Patch 7/7 finally adds support for the bus-width property to the mxsfb
driver.

Changes compared to v1 are minor and are listed in individual patches.

Laurent Pinchart (7):
  dt-bindings: display: mxsfb: Convert binding to YAML
  dt-bindings: display: mxsfb: Add and fix compatible strings
  dt-bindings: display: mxsfb: Add a bus-width endpoint property
  ARM: dts: imx: Fix LCDIF compatible strings
  arm64: dts: imx8mq: Fix LCDIF compatible strings
  ARM: dts: imx: Remove unneeded LCDIF disp_axi clock
  drm: mxsfb: Add support for the bus-width DT property

 .../bindings/display/fsl,lcdif.yaml           | 136 ++++++++++++++++++
 .../devicetree/bindings/display/mxsfb.txt     |  87 -----------
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/imx6sl.dtsi                 |   7 +-
 arch/arm/boot/dts/imx6sll.dtsi                |   7 +-
 arch/arm/boot/dts/imx6sx.dtsi                 |   4 +-
 arch/arm/boot/dts/imx6ul.dtsi                 |   7 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
 drivers/gpu/drm/mxsfb/mxsfb_drv.c             |  26 ++++
 drivers/gpu/drm/mxsfb/mxsfb_drv.h             |   2 +
 drivers/gpu/drm/mxsfb/mxsfb_kms.c             |   8 +-
 11 files changed, 183 insertions(+), 105 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/fsl,lcdif.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/mxsfb.txt

-- 
Regards,

Laurent Pinchart

