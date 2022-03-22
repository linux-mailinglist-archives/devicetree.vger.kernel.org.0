Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E82E4E466C
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 20:03:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbiCVTFS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 15:05:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbiCVTFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 15:05:16 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68B66BF74
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 12:03:48 -0700 (PDT)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 84EBFDFA;
        Tue, 22 Mar 2022 20:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1647975825;
        bh=ek59+m3F7lLUZDQXoYOJQSuzS1HjyIFfAJo/5HxvEuk=;
        h=From:To:Cc:Subject:Date:From;
        b=rwjIFNAN3/DNl5ZH1VnsG16+7WBgCTi3hT8A+/Tj/YWuospT1L2RXj1U/qhusT7BG
         fL1GLZl1vHlYf9xRXYzdsK3P9oOzYh2SongkJhsNh8fRxSX/qwNwJQnUZK/SyuOADk
         puVaGfvAPCCKYwYKRTZCIn2pdykSHQK8SC4XrvEk=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/4] imx8mp: Add media block control
Date:   Tue, 22 Mar 2022 21:03:20 +0200
Message-Id: <20220322190324.12589-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patch series adds support for the MEDIA_BLK_CTRL of the i.MX8MP to
the imx8m-blk-ctrl driver, and integrates it in the i.MX8MP device tree.

The patches depend on v2 of the series "soc: imx: gpcv2: add PGC
control register indirection" from Lucas Stach [1]. For testing
convenience, a branch that includes the dependency, based on v5.17, is
available at [2].

The series starts with DT bindings (1/4) and driver support (2/4),
followed by addition of the MEDIAMIX power domains to the GPC DT node
(3/4) and finally the new DT node for the MEDIA_BLK_CTRL.

Changes since v1 are listed in changelogs in the individual patches.

The patches have been tested with with ISI on the i.MX8MP. The ISI
driver is still under development [3], and will be posted in the not too
distant future.

[1] https://lore.kernel.org/all/20220207192547.1997549-1-l.stach@pengutronix.de/
[2] https://git.linuxtv.org/pinchartl/media.git/log/?h=nxp/next/powerdomains
[3] https://gitlab.com/ideasonboard/nxp/linux/-/tree/pinchartl/v5.17/isi

Laurent Pinchart (1):
  arm64: dts: imx8mp: Add MEDIAMIX power domains

Paul Elder (3):
  dt-bindings: soc: Add i.MX8MP media block control DT bindings
  soc: imx: imx8m-blk-ctrl: Add i.MX8MP media blk-ctrl
  arm64: dts: imx8mp: Add MEDIA_BLK_CTRL

 .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 106 ++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  59 ++++++++
 drivers/soc/imx/imx8m-blk-ctrl.c              | 131 +++++++++++++++++-
 include/dt-bindings/power/imx8mp-power.h      |  11 ++
 4 files changed, 305 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml


base-commit: 256819fa3c09600675e31e9cb64a1a24574f02b2
-- 
Regards,

Laurent Pinchart

