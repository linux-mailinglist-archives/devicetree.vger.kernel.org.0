Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B82566170A3
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 23:25:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231367AbiKBWZ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 18:25:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230491AbiKBWZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 18:25:58 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7010D63
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 15:25:56 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id ED3F3850BF;
        Wed,  2 Nov 2022 23:25:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667427955;
        bh=aZxLUz88IjC/zFX/sPiGzSanc5mW54ySPmFTYgHpvB8=;
        h=From:To:Cc:Subject:Date:From;
        b=HoG1RTUqWQYGAtHqIDOWrRQIhpe91l+ETCAMUjytos5KxqV4caZyHOyBf8vfYWK4H
         y6dIxfBrGOr8z7NyVRilgk3z4QrQVK53smqjzdGRHuufKbRl0HDpULPT/GFlmuHYCm
         hH2W2RAhXtmHITu7r70MmU3SB6CKFu8Rp8CyW8aFAfSTira3IZRuhLuQF3pEbcx4tx
         AYm+R2WvQu4jbASHe25BfYGZGGDhRDMhhCgy9pJ/rbDQ4XGcuM8eRD3UpZJuWVbYKO
         3iOCoA6ACemc95NNsa09zmVFdddGrGyKTmaqJpWx6kUZ4hTfDynUKhT89ds0eBiHIB
         DaLYON4D0qMCw==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Anson Huang <Anson.Huang@nxp.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: nvmem: snvs-lpgpr: Fix i.MX8M compatible strings
Date:   Wed,  2 Nov 2022 23:25:43 +0100
Message-Id: <20221102222543.153026-1-marex@denx.de>
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

The compatible strings for "fsl,imx8m*-snvs-lpgpr" always contain
the fallback "fsl,imx7d-snvs-lpgpr" compatible in DTs too, since
the fallback compatible is what the driver matches on, this way:
  compatible = "fsl,imx8mm-snvs-lpgpr", "fsl,imx7d-snvs-lpgpr"
The older "fsl,imx7d-snvs-lpgpr" and "fsl,imx6*-snvs-lpgpr" used
only that single compatible string.

Document both options in the binding document.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Anson Huang <Anson.Huang@nxp.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Oleksij Rempel <linux@rempel-privat.de>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 .../devicetree/bindings/nvmem/snvs-lpgpr.yaml | 20 +++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml b/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
index e374aa7891ae7..ec20e33d9b8f8 100644
--- a/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
+++ b/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
@@ -11,14 +11,18 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx6q-snvs-lpgpr
-      - fsl,imx6ul-snvs-lpgpr
-      - fsl,imx7d-snvs-lpgpr
-      - fsl,imx8mm-snvs-lpgpr
-      - fsl,imx8mn-snvs-lpgpr
-      - fsl,imx8mp-snvs-lpgpr
-      - fsl,imx8mq-snvs-lpgpr
+    oneOf:
+      - items:
+          - enum:
+              - fsl,imx8mm-snvs-lpgpr
+              - fsl,imx8mn-snvs-lpgpr
+              - fsl,imx8mp-snvs-lpgpr
+              - fsl,imx8mq-snvs-lpgpr
+          - const: fsl,imx7d-snvs-lpgpr
+      - enum:
+          - fsl,imx6q-snvs-lpgpr
+          - fsl,imx6ul-snvs-lpgpr
+          - fsl,imx7d-snvs-lpgpr
 
 required:
   - compatible
-- 
2.35.1

