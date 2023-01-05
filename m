Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D0AB65EE2A
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 15:03:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234339AbjAEOCu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 09:02:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234509AbjAEOCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 09:02:07 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF9A359300
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 06:02:06 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 81CC6855AE;
        Thu,  5 Jan 2023 15:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672927325;
        bh=twfzxVBcc6S4Y0e7XAFNZSxsY5ovk+83entV7p5ljsw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=IFmrzK+vVOv7YNfVw6byWTPZouPi7Oa/yCc7O/uAp/QZCjtE1bQtMb1EL6VVmSfTz
         2Af3cqgX8cmSYKj0LF7BOnkPDCRkNU/bRICz+TsDvcHc3F4EzpaVJ2NHkzG++ixMFG
         mjotKnuTURKfVpmPjzxdFSNcaMEqFad3sMO2k0UA0m3ZA8tLS8vupFXpeFcdBOHZdq
         TIhM/uNaVqP2NTDDV5ugSPpzk+v9rhMJmgrsMkDNgm0+0AJ0tX8cHIGY6kJpFRDsEl
         gzvMv02DddsVBGtOD3jCDrohaYoU6OfTWO60Uu9Ttx0nnLo9zUCFuy2DyBoBF8L98D
         SyBUkxP8VCW1w==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v3 4/4] dt-bindings: arm: Move i.MX8MM Cloos PHG Board to TQM entry
Date:   Thu,  5 Jan 2023 15:01:35 +0100
Message-Id: <20230105140135.150502-4-marex@denx.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105140135.150502-1-marex@denx.de>
References: <20230105140135.150502-1-marex@denx.de>
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

The i.MX8MM Cloos PHG Board is based on TQ-Systems GmbH i.MX8MM TQMa8MQML SOM,
which results in compatible string in the form:
"vendor,custom-board", "tqm,som", "fsl,soc"
Move the binding entry so this triplet can be matched on.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Fabio Estevam <festevam@denx.de>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
V2: - Add AB from Krzysztof
V3: - Rebase on shawn/imx/bindings
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7808eceb99063..96efb9e8cdbb0 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -815,7 +815,6 @@ properties:
           - enum:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
               - boundary,imx8mm-nitrogen8mm  # i.MX8MM Nitrogen Board
-              - cloos,imx8mm-phg          # i.MX8MM Cloos PHG Board
               - dmo,imx8mm-data-modul-edm-sbc # i.MX8MM eDM SBC
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
@@ -895,6 +894,7 @@ properties:
           one compatible is needed.
         items:
           - enum:
+              - cloos,imx8mm-phg           # i.MX8MM Cloos PHG Board
               - tq,imx8mm-tqma8mqml-mba8mx # TQ-Systems GmbH i.MX8MM TQMa8MQML SOM on MBa8Mx
           - const: tq,imx8mm-tqma8mqml     # TQ-Systems GmbH i.MX8MM TQMa8MQML SOM
           - const: fsl,imx8mm
-- 
2.39.0

