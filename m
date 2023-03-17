Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65D136BE617
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230076AbjCQJ7B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:59:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjCQJ7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:59:00 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3483019129
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:58:59 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C0A4A85B2A;
        Fri, 17 Mar 2023 10:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1679047137;
        bh=RozTPNCfde2OU3/LMQ1THC4JrpTga+x0KEkC4XiKGWc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=nmbAxOXZKydbATqgDMLQJePIGO01Qk1dxNn9praOwzK/2J5NOMqBjPzBx/ujrA146
         kSotQf2Xz+FFzAbFrhETzrJkg5JJrENe3WktqIyszNnLVmfGYGhN+ebH3dgh39XGsQ
         GWv+e5NzNpEhQCTcjBFQT3liLSd8HWSL0KE/5zOGZAxMxofLSbgTHH6bl7/WIeq5wa
         ZNl8FB/0gQjHmlwIo6k60iIlf7wQZfUZfSTUVpQwlJ7QHLlmv0dXDYMSZyWpmaz18R
         egEgRW7k5EF44C5j7ZbefVW3zCpFiJV6bC7sCqE4eDs/e9N2+hVbljOlD3KaeIfTcg
         NUEdLuXc4XP/A==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: soc: imx-blk-ctrl: Drop leading label in blk-ctrl in examples
Date:   Fri, 17 Mar 2023 10:58:27 +0100
Message-Id: <20230317095827.49100-2-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230317095827.49100-1-marex@denx.de>
References: <20230317095827.49100-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Drop the leading label in block controller examples, it is unused.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
Note: This was suggested by Krzysztof as part of requested changes to commit
      0d2c843ce5adb ("dt-bindings: soc: imx8mp-media-blk-ctrl: Align block controller example name")
      Expand the change onto all the block controllers.
---
 .../devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml   | 2 +-
 .../devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml    | 2 +-
 .../devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml   | 2 +-
 .../devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml   | 2 +-
 .../devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml    | 2 +-
 .../devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml   | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
index e8da8f413966b..a02a09d574a2c 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
@@ -70,7 +70,7 @@ examples:
     #include <dt-bindings/clock/imx8mm-clock.h>
     #include <dt-bindings/power/imx8mm-power.h>
 
-    disp_blk_ctl: blk-ctrl@32e28000 {
+    blk-ctrl@32e28000 {
       compatible = "fsl,imx8mm-disp-blk-ctrl", "syscon";
       reg = <0x32e28000 0x100>;
       power-domains = <&pgc_dispmix>, <&pgc_dispmix>, <&pgc_dispmix>,
diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
index d71bb20d49073..25109376d7d4a 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
@@ -150,7 +150,7 @@ examples:
     #include <dt-bindings/clock/imx8mm-clock.h>
     #include <dt-bindings/power/imx8mm-power.h>
 
-    vpu_blk_ctrl: blk-ctrl@38330000 {
+    blk-ctrl@38330000 {
       compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
       reg = <0x38330000 0x100>;
       power-domains = <&pgc_vpumix>, <&pgc_vpu_g1>,
diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
index 9fb99fb407332..eeec9965b0919 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
@@ -71,7 +71,7 @@ examples:
     #include <dt-bindings/clock/imx8mn-clock.h>
     #include <dt-bindings/power/imx8mn-power.h>
 
-    disp_blk_ctl: blk-ctrl@32e28000 {
+    blk-ctrl@32e28000 {
       compatible = "fsl,imx8mn-disp-blk-ctrl", "syscon";
       reg = <0x32e28000 0x100>;
       power-domains = <&pgc_dispmix>, <&pgc_dispmix>,
diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
index 1fe68b53b1d83..4214c1ab4971d 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
@@ -76,7 +76,7 @@ examples:
     #include <dt-bindings/clock/imx8mp-clock.h>
     #include <dt-bindings/power/imx8mp-power.h>
 
-    hsio_blk_ctrl: blk-ctrl@32f10000 {
+    blk-ctrl@32f10000 {
         compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
         reg = <0x32f10000 0x24>;
         clocks = <&clk IMX8MP_CLK_USB_ROOT>,
diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
index 7263ebedf09f3..ea5c90c6a1b69 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
@@ -59,7 +59,7 @@ examples:
     #include <dt-bindings/clock/imx8mq-clock.h>
     #include <dt-bindings/power/imx8mq-power.h>
 
-    vpu_blk_ctrl: blk-ctrl@38320000 {
+    blk-ctrl@38320000 {
       compatible = "fsl,imx8mq-vpu-blk-ctrl";
       reg = <0x38320000 0x100>;
       power-domains = <&pgc_vpu>, <&pgc_vpu>, <&pgc_vpu>;
diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
index 792ebecec22d0..b3554e7f9e76d 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
@@ -60,7 +60,7 @@ examples:
     #include <dt-bindings/clock/imx93-clock.h>
     #include <dt-bindings/power/fsl,imx93-power.h>
 
-    media_blk_ctrl: system-controller@4ac10000 {
+    system-controller@4ac10000 {
       compatible = "fsl,imx93-media-blk-ctrl", "syscon";
       reg = <0x4ac10000 0x10000>;
       power-domains = <&mediamix>;
-- 
2.39.2

