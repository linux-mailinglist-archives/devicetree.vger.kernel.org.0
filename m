Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8579864E4A0
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 00:21:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiLOXV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 18:21:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbiLOXVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 18:21:54 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA7396034D
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 15:21:51 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7CD768535C;
        Fri, 16 Dec 2022 00:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671146509;
        bh=FHIngNoaPY6OlHYvA9YQFBRVLynXIQv/Vql3O1jKjNI=;
        h=From:To:Cc:Subject:Date:From;
        b=gUzcWOzNReZeQubHwDs3Ilpp/6tByECz0rBRVBVBAYzoRzs18LogKSPAA3Io/EcEb
         k3mji43A2SC1qQHq9FD8MdgtDDd0pyfgNvesRyD9jC/Qfszu3TCQVcQ0STWr3UJ4UX
         bvgOUYNzISwssojEHcMwzeEUrHqRcGwFcCXu4cQbpC2JuuDne3LvI3+Dc7lEkyt13y
         A4blFaxoDA1Ra3vIx90bHaooFD/j5WMXhnlosIBNUFlJWpbvptL9zmUlJ6BIeKW1pb
         Bk7YXWYVJCEwTuOQx4R+bjneDAxzwVZvN0wp/yh6+LYn9/bfPf4OK9toJG+F9iODd2
         vyszr7vC8c0/g==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: arm: Split i.MX8M Mini Toradex Verdin based boards
Date:   Fri, 16 Dec 2022 00:21:34 +0100
Message-Id: <20221215232137.144256-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
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

The Toradex Verdin based boards have compatible string in the form:
"vendor,custom-board", "toradex,som", "fsl,soc"
Split the binding entry so this triplet can be matched on.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@denx.de>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 05b5276a0e14c..8dda0e25b99e4 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -830,7 +830,6 @@ properties:
               - innocomm,wb15-evk         # i.MX8MM Innocomm EVK board with WB15 SoM
               - kontron,imx8mm-sl         # i.MX8MM Kontron SL (N801X) SOM
               - kontron,imx8mm-osm-s      # i.MX8MM Kontron OSM-S (N802X) SOM
-              - menlo,mx8menlo            # i.MX8MM Menlo board with Verdin SoM
               - toradex,verdin-imx8mm     # Verdin iMX8M Mini Modules
               - toradex,verdin-imx8mm-nonwifi  # Verdin iMX8M Mini Modules without Wi-Fi / BT
               - toradex,verdin-imx8mm-wifi  # Verdin iMX8M Mini Wi-Fi / BT Modules
@@ -838,6 +837,12 @@ properties:
               - prt,prt8mm                # i.MX8MM Protonic PRT8MM Board
           - const: fsl,imx8mm
 
+      - description: Verdin iMX8M Mini Module based Boards
+        items:
+          - const: menlo,mx8menlo         # i.MX8MM Menlo board with Verdin SoM
+          - const: toradex,verdin-imx8mm  # Verdin iMX8M Mini Modules
+          - const: fsl,imx8mm
+
       - description: Engicam i.Core MX8M Mini SoM based boards
         items:
           - enum:
-- 
2.35.1

