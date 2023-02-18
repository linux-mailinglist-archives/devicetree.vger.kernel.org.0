Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4121969BE08
	for <lists+devicetree@lfdr.de>; Sun, 19 Feb 2023 00:54:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbjBRXyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Feb 2023 18:54:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229767AbjBRXyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Feb 2023 18:54:40 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 923B414481
        for <devicetree@vger.kernel.org>; Sat, 18 Feb 2023 15:54:39 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 72DC0844BF;
        Sun, 19 Feb 2023 00:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676764478;
        bh=R1VU7Am6FA4a81oBqhTYkrVHvP0LM8OcXTLuwsN874A=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=SIDFTE9ncTDyWNADB/56rWvG25MBZSYcqfJtcei84C0mKzcmd+amxxkdRjvI0o5xx
         B9VBvr6a0HV94IzDpndxxN9lEzKFOe3HTQvvep33t2rUEmOKmEdF95CfdjnKrkwnZH
         76Cb7uAw0xaOmOc3+Jewf6Uf8MenB59H2VZv1e9/paCyGsQXIcdtlYz1T3OZMdP/S+
         FqVe857pqA2nv2fPGS9ks1mE02ggnmazUtKWUuBY7ZHuOjAx0LcYDq4oVU82E1yXJi
         4H8B8WXOAD3+MoWj8AIqyPAEkQkvb7lM3H0uNgN65KEsPjJSnvahCaOYn6qe0K104w
         PbyqeIVMlDaEg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
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
Subject: [PATCH 4/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind drivers to them
Date:   Sun, 19 Feb 2023 00:54:17 +0100
Message-Id: <20230218235417.173325-4-marex@denx.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230218235417.173325-1-marex@denx.de>
References: <20230218235417.173325-1-marex@denx.de>
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
 drivers/soc/imx/imx8m-blk-ctrl.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
index 399cb85105a18..ab48f9dff4be5 100644
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
 
@@ -310,6 +312,15 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, bc);
 
+	for_each_child_of_node(dev->of_node, np) {
+		child = of_platform_device_create(np, NULL, dev);
+		if (!child)
+			ret = -ENOMEM;
+		of_node_put(np);
+		if (ret)
+			goto cleanup_provider;
+	}
+
 	return 0;
 
 cleanup_provider:
-- 
2.39.1

