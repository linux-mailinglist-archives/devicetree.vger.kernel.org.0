Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAFC36BE616
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbjCQJ7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:59:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjCQJ67 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:58:59 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39DA5A24D
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:58:58 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 03762858D6;
        Fri, 17 Mar 2023 10:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1679047136;
        bh=sGSfHgXupyRkA3rOnel6j9Fn/cS74+iQ89ryIAXdUU0=;
        h=From:To:Cc:Subject:Date:From;
        b=tNO7lQzrxc9j02HENS2B4xIqwF6IlgdRp18ZLmfZ59sSVm5qTas547KjioDuD2XSc
         J6sfJdxyFzbrg1uifUXHlKEeyyWJ8evYLfSSOeERJai+IFjRu9Kw4eDYAQc2HcDU9v
         NpxIxyi6AzPv3dadgOP0EGQwLSG6o7tfEH4I8XLjv3/4rwp13BRLm2JozU0/9iaqG0
         BJGefstLJSs85CEpZim04cWG7FvmfUJxyodyEcf93HNT95vqh/FJ/DvIYJs9kZ44EN
         bNGUSkIaSNM9M0r7RwL+eQZ2Po2BDQVOWwrNvHSScLFxpiclosPxylXUHyLibU1ieM
         LjJiUvtxOVfJQ==
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
Subject: [PATCH 1/2] dt-bindings: soc: imx8m-blk-ctrl: Rename blk_ctrl to blk-ctrl in examples
Date:   Fri, 17 Mar 2023 10:58:26 +0100
Message-Id: <20230317095827.49100-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
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

Rename blk_ctrl@ to blk-ctrl (with dash instead of underscore) in examples
so that they would match the imx8m[mn].dtsi in current Linux kernel.

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
 .../devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml   | 2 +-
 .../devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
index ecd86cfb3da41..e8da8f413966b 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
@@ -70,7 +70,7 @@ examples:
     #include <dt-bindings/clock/imx8mm-clock.h>
     #include <dt-bindings/power/imx8mm-power.h>
 
-    disp_blk_ctl: blk_ctrl@32e28000 {
+    disp_blk_ctl: blk-ctrl@32e28000 {
       compatible = "fsl,imx8mm-disp-blk-ctrl", "syscon";
       reg = <0x32e28000 0x100>;
       power-domains = <&pgc_dispmix>, <&pgc_dispmix>, <&pgc_dispmix>,
diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
index fbeaac399c502..9fb99fb407332 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
@@ -71,7 +71,7 @@ examples:
     #include <dt-bindings/clock/imx8mn-clock.h>
     #include <dt-bindings/power/imx8mn-power.h>
 
-    disp_blk_ctl: blk_ctrl@32e28000 {
+    disp_blk_ctl: blk-ctrl@32e28000 {
       compatible = "fsl,imx8mn-disp-blk-ctrl", "syscon";
       reg = <0x32e28000 0x100>;
       power-domains = <&pgc_dispmix>, <&pgc_dispmix>,
-- 
2.39.2

