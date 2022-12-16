Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD72E64F224
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 21:08:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231902AbiLPUI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 15:08:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231836AbiLPUI2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 15:08:28 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC55B2DAA1
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 12:08:27 -0800 (PST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p6H0J-0000kf-Ez; Fri, 16 Dec 2022 21:08:23 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Subject: [PATCH v3 3/5] soc: imx: imx8mp-blk-ctrl: add instance specific probe function
Date:   Fri, 16 Dec 2022 21:08:19 +0100
Message-Id: <20221216200821.3230165-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221216200821.3230165-1-l.stach@pengutronix.de>
References: <20221216200821.3230165-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow the specific blk-ctrl instance to define a function, which will
be called during probe to provide device specific extensions.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Tested-by: Lukas F. Hartmann <lukas@mntre.com>
---
 drivers/soc/imx/imx8mp-blk-ctrl.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/soc/imx/imx8mp-blk-ctrl.c b/drivers/soc/imx/imx8mp-blk-ctrl.c
index 0e3b6ba22f94..b3d9f6e083ba 100644
--- a/drivers/soc/imx/imx8mp-blk-ctrl.c
+++ b/drivers/soc/imx/imx8mp-blk-ctrl.c
@@ -60,6 +60,7 @@ struct imx8mp_blk_ctrl_domain {
 
 struct imx8mp_blk_ctrl_data {
 	int max_reg;
+	int (*probe) (struct imx8mp_blk_ctrl *bc);
 	notifier_fn_t power_notifier_fn;
 	void (*power_off) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
 	void (*power_on) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
@@ -634,6 +635,12 @@ static int imx8mp_blk_ctrl_probe(struct platform_device *pdev)
 		goto cleanup_provider;
 	}
 
+	if (bc_data->probe) {
+		ret = bc_data->probe(bc);
+		if (ret)
+			goto cleanup_provider;
+	}
+
 	dev_set_drvdata(dev, bc);
 
 	return 0;
-- 
2.30.2

