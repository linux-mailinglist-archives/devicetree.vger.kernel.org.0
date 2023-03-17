Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2DFE6BE5DD
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:48:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjCQJr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:47:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbjCQJrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:47:55 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E66A442C3
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:47:54 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 95B608595F;
        Fri, 17 Mar 2023 10:47:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1679046471;
        bh=7ipA5tbxra+5dgSRVmPjJZLI6wK3MjAXLHP66Dz1rlM=;
        h=From:To:Cc:Subject:Date:From;
        b=NXDI1J64UK/BfwNbWQjsvJT7XOy6T2qvdEyoN0RX1hPvptRIwtvswpwk/Ps+Xg1dz
         hBNkBV/ihKdqAla8bNht7ipI03r7z7NGhmf6gBBuwC8FccP0AB483wWAWZvLA6x23z
         wGJUaDi07PML8JtlSMImT0hBLjNEMYe6J/E5yHDKzsN4mbIiWiDjBrUC7WGvFOZPA8
         I3XYSXc6ssFmbnXIOr+LBFmWjlyXDRSCAjpeDd3sCxnoNUxM1IOa90GfEglitnVfQD
         Yg3QzyiOVhtbDNdhXRLSp7TQkNCMc0gdvB0RhXgzOgzyRrQy0vENUc3Zfe6xxtP8oF
         nKEG8q3ZyfQMw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus DHCOM on PDK3
Date:   Fri, 17 Mar 2023 10:47:24 +0100
Message-Id: <20230317094725.48305-1-marex@denx.de>
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

Add DT compatible string for DH electronics i.MX8M Plus DHCOM on PDK3
evaluation board into YAML DT binding document. This setup is a general
purpose SoM evaluation board.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Li Yang <leoyang.li@nxp.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Matthias Schiffer <matthias.schiffer@tq-group.com>
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
V2: Add AB from Krzysztof
V3: No change
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 67a325ed57941..ebeec45c9b711 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1020,7 +1020,9 @@ properties:
 
       - description: i.MX8MP DHCOM based Boards
         items:
-          - const: dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
+          - enum:
+              - dh,imx8mp-dhcom-pdk2         # i.MX8MP DHCOM SoM on PDK2 board
+              - dh,imx8mp-dhcom-pdk3         # i.MX8MP DHCOM SoM on PDK3 board
           - const: dh,imx8mp-dhcom-som       # i.MX8MP DHCOM SoM
           - const: fsl,imx8mp
 
-- 
2.39.2

