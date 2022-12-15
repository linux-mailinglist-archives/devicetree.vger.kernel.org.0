Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA5564E4A2
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 00:22:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbiLOXV7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 18:21:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbiLOXVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 18:21:54 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E67384A075
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 15:21:51 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id EA5BB85361;
        Fri, 16 Dec 2022 00:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671146510;
        bh=icThCfhb2unKpb3vEGV94GsEsuDUMoWLZukYu5V4qE0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=hUIFe8kQpcMqqDGKcj9pkAM0fv559bNR9KUtyZw3ob9opwpqjbnESeXuZviD/tz28
         57W68fMBja1z1QNMZo/Ps2jgQoe/dm9qTqTDArtH6W82/jrrTV8XbA+p0+w3XjqLbI
         ok1bfMmDobGQ46CWUgX123U/Vcts/faQTH6uA4VnR7uMsPo4dhd0XPYdkyWlKfp5QK
         9ATtMGp74wfbxvw/zcTQd953g8oHX4/zaSGHdU6VDlPm3CQSahNuJa46gZ75qVBKdl
         pxzQpFYClUdpxFs0Nx1nwwpL4e8J4swfK0Zc533+x/QGek7u3gQwrdk0vxM4rNRfKu
         0Oj6cZtG23rvQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <dev@lynxeye.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: arm: Split i.MX8M Mini NITROGEN SoM based boards
Date:   Fri, 16 Dec 2022 00:21:35 +0100
Message-Id: <20221215232137.144256-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221215232137.144256-1-marex@denx.de>
References: <20221215232137.144256-1-marex@denx.de>
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

The NITROGEN SoM based boards have compatible string in the form:
"vendor,custom-board", "boundary,som", "fsl,soc"
Split the binding entry so this triplet can be matched on.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Lucas Stach <dev@lynxeye.de>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 8dda0e25b99e4..8dfbf861a99b7 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1004,12 +1004,17 @@ properties:
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - google,imx8mq-phanbell    # Google Coral Edge TPU
               - kontron,pitx-imx8m        # Kontron pITX-imx8m Board
-              - mntre,reform2             # MNT Reform2 Laptop
               - purism,librem5-devkit     # Purism Librem5 devkit
               - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
               - technexion,pico-pi-imx8m  # TechNexion PICO-PI-8M evk
           - const: fsl,imx8mq
 
+      - description: i.MX8MQ NITROGEN SoM based Boards
+        items:
+          - const: mntre,reform2                  # MNT Reform2 Laptop
+          - const: boundary,imx8mq-nitrogen8m-som # i.MX8MQ NITROGEN SoM
+          - const: fsl,imx8mq
+
       - description: Purism Librem5 phones
         items:
           - enum:
-- 
2.35.1

