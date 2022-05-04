Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F283351937E
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 03:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbiEDBaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 21:30:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbiEDBaB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 21:30:01 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E46FB1D329
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 18:26:26 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7C16983BAC;
        Wed,  4 May 2022 03:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1651627583;
        bh=xqgGZCcnqcQgYYD71Irb/nktpjEfFcbFyKjN6J1OG4c=;
        h=From:To:Cc:Subject:Date:From;
        b=KjqawEM44cxTp5YoaOYvZ/sI+G7XsMqP24aiVGBNCNCSp9NtZBZjj2c7z0NbPnVcM
         vn7vJ5TtHCL7mvFWHkR9V3tFi2HoiyNeVBvE90CyLot+EfuLIHWkAyG3+nYOI4xJ9Y
         09bChCx9LsNG5qKZmibuRsWwn89l76PKVfgDYrC5q6HK2OdH2MK4mJS6to0GKmhdwn
         W1Hd4VRub1wFRnJY9ziNU65aeWYJZALghBgOLr4OuKCPgo86RhPEDykmUf1IBgo0H8
         AJkTdmYhhybswByCsAVMFB/seFlH0KXbNXf7iK08wdAQVfxdSIjuzUOHOLFd2UD+rv
         4+fVErZ6Dzc9g==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: bridge: ldb: Fill in reg property
Date:   Wed,  4 May 2022 03:26:01 +0200
Message-Id: <20220504012601.423644-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing reg and reg-names properties for both 'LDB_CTRL'
and 'LVDS_CTRL' registers.

Fixes: 463db5c2ed4ae ("drm: bridge: ldb: Implement simple Freescale i.MX8MP LDB bridge")
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Maxime Ripard <maxime@cerno.tech>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robby Cai <robby.cai@nxp.com>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 .../bindings/display/bridge/fsl,ldb.yaml         | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 77f174eee424f..2ebaa43eb62e9 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -24,6 +24,15 @@ properties:
   clock-names:
     const: ldb
 
+  reg:
+    minItems: 2
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: ldb
+      - const: lvds
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -56,10 +65,15 @@ examples:
     #include <dt-bindings/clock/imx8mp-clock.h>
 
     blk-ctrl {
-        bridge {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        bridge@5c {
             compatible = "fsl,imx8mp-ldb";
             clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
             clock-names = "ldb";
+            reg = <0x5c 0x4>, <0x128 0x4>;
+            reg-names = "ldb", "lvds";
 
             ports {
                 #address-cells = <1>;
-- 
2.35.1

