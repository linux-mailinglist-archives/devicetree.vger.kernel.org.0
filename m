Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E53FD69E35B
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 16:28:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234230AbjBUP2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 10:28:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229945AbjBUP2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 10:28:21 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FF452006F
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 07:28:19 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E460B8590C;
        Tue, 21 Feb 2023 16:28:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676993296;
        bh=Mc/GOVfs2iUvxjZSKaM0SpL4Bg/aNAnGENalX9dJrRE=;
        h=From:To:Cc:Subject:Date:From;
        b=a3DPOkNoJaA5IcLxi81+fs69qqqW6NkU3SWkDrgfsN8Xv9j6hdvOZDUn2VDI1eAS2
         nvqTgZI0Sxg03Ldu1hyd9C4KYeNrEZgizCo+5p/zSpOzm7pgsaWWsnIVfINHxdVMcF
         vT4pFGu5xHUdJx083YPeE1/1fXpubmJ7RH0XAlp/Q1eH0xgr3+ilXNAg06lyLcfy8v
         yET4R3+zIFnpq1/JcHTUgKWyPP2NMklroMq/5BPoc/2Av5yrkx4h1ob1Mq8btb0CP2
         pO1wbIemLNUNdBlq1hobpa+RxwOZLhdus3qkPcObS0ya76aye/W7781lAKuf4OmLZ9
         +Mrj8ShW7TQLw==
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
Subject: [PATCH v3 1/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Align block controller example name
Date:   Tue, 21 Feb 2023 16:28:01 +0100
Message-Id: <20230221152804.6061-1-marex@denx.de>
X-Mailer: git-send-email 2.39.1
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

Align the block controller example node name with Linux imx8mp.dtsi .
No functional change.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
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
V2: Adjust the label too
V3: - Add RB from Liu
    - Drop the label
---
 .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
index dadb6108e3213..a0f7c73510d04 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
@@ -94,7 +94,7 @@ examples:
     #include <dt-bindings/clock/imx8mp-clock.h>
     #include <dt-bindings/power/imx8mp-power.h>
 
-    media_blk_ctl: blk-ctl@32ec0000 {
+    blk-ctrl@32ec0000 {
         compatible = "fsl,imx8mp-media-blk-ctrl", "syscon";
         reg = <0x32ec0000 0x138>;
         power-domains = <&mediamix_pd>, <&mipi_phy1_pd>, <&mipi_phy1_pd>,
-- 
2.39.1

