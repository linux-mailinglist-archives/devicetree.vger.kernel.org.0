Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB8996A4681
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 16:54:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbjB0Pyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 10:54:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjB0Pyj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 10:54:39 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DE2010423
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 07:54:37 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id CB84085A35;
        Mon, 27 Feb 2023 16:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677513275;
        bh=RhbrvPnLAIm5JcSIDnQQcF9dl9lbKecsaZECrKT+Xlc=;
        h=From:To:Cc:Subject:Date:From;
        b=luU0IHYI33XBRTeo6nNLjyfCuq7kf6pArMdc76xGL1+aiqpCT5ZYSjhwwcP842CmL
         sViVHyx7Wkfx8TQ0h3uWQyvEn9V8k4f/dMPh5MEHzzUCeKeJxW4sL1lEtwdpksUwVF
         c++6I+C3l6n67FBVjjguUViGHLZbdVJWV8yB2NI4Ed0PY6zlZclaZxzCX6crNSDT+M
         /Xsvk5nf9XKIG+AnanFWBtTovpcsmj4aQ0p/H41dJUXihaj07ISdlutFKDS/vhV7Ao
         ah4R03+Wm8uRFhttDM25IbatK3/7dUOY8ErIMYqLFX6z5+If2QtY1WoTq8S7JPaB/P
         SfUZxFsiJdYJg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Liu Ying <victor.liu@nxp.com>,
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
Subject: [PATCH v5 1/5] dt-bindings: soc: imx8mp-media-blk-ctrl: Align block controller example name
Date:   Mon, 27 Feb 2023 16:54:19 +0100
Message-Id: <20230227155423.40359-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Liu Ying <victor.liu@nxp.com>
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
V2: Adjust the label too
V3: - Add RB from Liu
    - Drop the label
V4: Add AB from Krzysztof
V5: Add RB/TB from Alexander
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
2.39.2

