Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1EA4C70EE
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 16:48:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231771AbiB1PtF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 10:49:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231673AbiB1PtE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 10:49:04 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AFA836303
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 07:48:24 -0800 (PST)
Received: from pyrite.rasen.tech (h175-177-042-148.catv02.itscom.jp [175.177.42.148])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B7E09478;
        Mon, 28 Feb 2022 16:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1646063301;
        bh=tpbylHIrigSnf/DD/+R4ZPtYn1ROIYJyi/07EoMfG/A=;
        h=From:To:Cc:Subject:Date:From;
        b=wike9SuIU9w8Lwv4YvIB0WTxT0ZrCtIbFELnWNboJM+bnxfYJrntu4Vr7hz7NH0Wg
         jt2rUpz6OZn4x2ASQzL9inVMLNX7MRJ+zGDa8JOSsEarGMJJiLLLf8dCpeM5df6M0F
         9MosV1ujhHRtB1AdCBbfBosBEfiWllKO0XhalqmI=
From:   Paul Elder <paul.elder@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Paul Elder <paul.elder@ideasonboard.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Marek Vasut <marex@denx.de>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Zhen Lei <thunder.leizhen@huawei.com>,
        Jacky Bai <ping.bai@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Dan Carpenter <dan.carpenter@oracle.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] imx8mp: Add media block control
Date:   Tue,  1 Mar 2022 00:47:57 +0900
Message-Id: <20220228154801.1347487-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
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

This patch series depends on v2 of the series "soc: imx: gpcv2: add PGC
control register indirection" from Lucas Stach [1].

The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level
peripheral providing access to the NoC and ensuring proper power
sequencing of the peripherals within the MEDIAMIX domain. This patch
series adds DT bindings for it, and expands the imx8m-blk-ctrl driver to
support the i.MX8MP's Media Block Control.

The patches have been tested with with ISI on the i.MX8MP. The ISI
driver is still under development [2], and will be posted in the not too
distant future.

[1] https://lore.kernel.org/all/20220207192547.1997549-1-l.stach@pengutronix.de/
[2] https://gitlab.com/ideasonboard/nxp/linux/-/tree/pinchartl/v5.17/isi

Laurent Pinchart (1):
  arm64: dts: imx8mp: Add MEDIAMIX power domains

Paul Elder (3):
  dt-bindings: soc: Add i.MX8MP media block control DT bindings
  soc: imx: imx8m-blk-ctrl: Add i.MX8MP media blk-ctrl
  arm64: dts: imx8mp: Add MEDIA_BLK_CTRL

 .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 105 +++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  66 ++++++++++
 drivers/soc/imx/imx8m-blk-ctrl.c              | 123 +++++++++++++++++-
 include/dt-bindings/power/imx8mp-power.h      |  10 ++
 4 files changed, 302 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml

-- 
2.30.2
