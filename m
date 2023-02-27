Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 768216A4683
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 16:54:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbjB0Pyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 10:54:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjB0Pyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 10:54:40 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 441B814203
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 07:54:39 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C3A6E85A7B;
        Mon, 27 Feb 2023 16:54:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677513277;
        bh=zvV2YD0UV3KsEgaXHKPjZ5VzXCKzCsRPiqTxY5xb/SI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=dAcwbcaFTi/j3joWZfmun9EgSMCakcK9v8bJb4rdNBOjEe5etM3pUaTjpmcgh6xtI
         hwp1OJsoX97ksrSAoI3zFlbMTszAcqFvneydPNR8jqr9aYm/P2UpaWBKal3m9c8dNt
         ZPmJLWL7sFjA/zx8VcOc+/+9y0REdtqknp86GAitEBI/cF8SwyrtCUohQhZ+BJOvNG
         d8YgWzHeAdLMgl2Y8kp6QdpmF86/cHZH65BLgGseG4KXk88FYaUGrRtH/hVIrh/K9U
         r/G0aqRZfM6skIylujTgtSB9+15lfU6aUF3B8bJa8pwQ1HXVilET/3d4Y3QRk4Imhr
         Z/SLSsLFDRe3A==
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
Subject: [PATCH v5 3/5] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind drivers to them
Date:   Mon, 27 Feb 2023 16:54:21 +0100
Message-Id: <20230227155423.40359-3-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230227155423.40359-1-marex@denx.de>
References: <20230227155423.40359-1-marex@denx.de>
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
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
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
V4: - Use devm_of_platform_populate()
    - Remove RB from Liu
V5: - Handle devm_of_platform_populate() return value correctly
    - Add TB from Alexander
---
 drivers/soc/imx/imx8m-blk-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
index 399cb85105a18..8bee7280303c5 100644
--- a/drivers/soc/imx/imx8m-blk-ctrl.c
+++ b/drivers/soc/imx/imx8m-blk-ctrl.c
@@ -310,6 +310,10 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, bc);
 
+	ret = devm_of_platform_populate(dev);
+	if (ret)
+		goto cleanup_provider;
+
 	return 0;
 
 cleanup_provider:
-- 
2.39.2

