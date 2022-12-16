Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F17164F2E0
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 22:03:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230486AbiLPVDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 16:03:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbiLPVDE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 16:03:04 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD97F6B201
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 13:03:03 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id BD9AB8528A;
        Fri, 16 Dec 2022 22:03:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671224582;
        bh=Xen+fnf4issnlBF9ry2pOybDKch4veTgnpv+Sf8wrsE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=KjvplwLBF/sHqqUqPh5VczMxTB5urkjUYqUIAffZZLxAMM5QZ/QAP+wrMrWJ8CJHb
         Vzz/R7zca/0LB1jsd1qKSiW+8TxV5ODSeechjFRgjXgJJKSG6aabyYOCNX07+l+4Lg
         Rx1igEYuo2Bd9Usg32k5HjK1mpuR0gvhUqXmdS6p0shAZmcr+f4kA9hmAojcZVSqeh
         CwqQTQxs8PZnpe2nMs+p9XqeD/wdcwa83+dBr6Ycj64yx3k2KDxqHnR1SdkLIoD09R
         0qvwiGXw/GHDRGNBEPDjCzBffHluvvepwscsywGkVLucW0mD/D80d+GA/qgpcexgGs
         GO8TfxlZoFv4Q==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@dh-electronics.com
Subject: [PATCH v2 3/4] dt-bindings: arm: Split i.MX8M Plus DHCOM based boards
Date:   Fri, 16 Dec 2022 22:02:43 +0100
Message-Id: <20221216210244.591865-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221216210244.591865-1-marex@denx.de>
References: <20221216210244.591865-1-marex@denx.de>
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

The i.MX8M Plus DHCOM based boards have compatible string in the form:
"vendor,custom-board", "dh,som", "fsl,soc"
or
"dh,carrier-board", "dh,som", "fsl,soc"
Split the binding entry so this triplet can be matched on.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: kernel@dh-electronics.com
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
V2: - Add AB from Krzysztof
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 25d24d4cbf256..ab01e3e66b734 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -931,8 +931,6 @@ properties:
       - description: i.MX8MP based Boards
         items:
           - enum:
-              - dh,imx8mp-dhcom-som       # i.MX8MP DHCOM SoM
-              - dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
               - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
@@ -947,6 +945,12 @@ properties:
           - const: avnet,sm2s-imx8mp              # SM2S-IMX8PLUS SoM
           - const: fsl,imx8mp
 
+      - description: i.MX8MP DHCOM based Boards
+        items:
+          - const: dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
+          - const: dh,imx8mp-dhcom-som       # i.MX8MP DHCOM SoM
+          - const: fsl,imx8mp
+
       - description: Engicam i.Core MX8M Plus SoM based boards
         items:
           - enum:
-- 
2.35.1

