Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB05D69E35E
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 16:28:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234052AbjBUP2X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 10:28:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234299AbjBUP2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 10:28:22 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE1C8211FE
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 07:28:19 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8C1F6859EE;
        Tue, 21 Feb 2023 16:28:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676993298;
        bh=IJBqQ2/VP+or5+tz9jao7x/H6C+Ut0rSs9s79xfWqN4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Qfrzj8gFWOuZRz3BwDZvNxjpPGiGPxtajOABVADQA6F310uSgR1NX203fWFB+ldTR
         Nv+PMYOrfqP4voxpCZ1vGRQXCtPhiDOJiDmVwArsDR32Ao303+QgwgABMzVCkB5wiA
         YMPpQiUva+g63JzzdjdrrFbMkA7emIlebnTYZmmyIL7bONa+UfuQOq+nPnfrIoTiBr
         /Io8eABiO8EJeI8d8sbD98ZsGfsl1io/9Hstq0geVSq4beg6iZNNEi6IauYLik0VNc
         o8Dltd8S1dkhmCMICVdnOPktjbkFNFdM6Go7BxiH2dV0qyZ8x7FJECWajkot0kKCEC
         QipZCGH0ZXW4A==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Liu Ying <victor.liu@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v3 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind drivers to them
Date:   Tue, 21 Feb 2023 16:28:03 +0100
Message-Id: <20230221152804.6061-3-marex@denx.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221152804.6061-1-marex@denx.de>
References: <20230221152804.6061-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This particular block can have DT subnodes describing the LVDS LDB
bridge. Instead of misusing simple-bus to scan for those nodes, do
the scan within the driver.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
V2: - Turn this into 3/4
    - Warn and continue in case of error
V3: Add RB from Liu
---
 drivers/soc/imx/imx8m-blk-ctrl.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
index 399cb85105a18..4f5736e612fb0 100644
--- a/drivers/soc/imx/imx8m-blk-ctrl.c
+++ b/drivers/soc/imx/imx8m-blk-ctrl.c
@@ -169,7 +169,9 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
 {
 	const struct imx8m_blk_ctrl_data *bc_data;
 	struct device *dev = &pdev->dev;
+	struct platform_device *child;
 	struct imx8m_blk_ctrl *bc;
+	struct device_node *np;
 	void __iomem *base;
 	int i, ret;
 
@@ -310,6 +312,13 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, bc);
 
+	for_each_child_of_node(dev->of_node, np) {
+		child = of_platform_device_create(np, NULL, dev);
+		if (child)
+			continue;
+		dev_warn(dev, "failed to create device for %pOF\n", np);
+	}
+
 	return 0;
 
 cleanup_provider:
-- 
2.39.1

