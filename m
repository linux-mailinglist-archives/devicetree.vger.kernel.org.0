Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9764664F2E1
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 22:03:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbiLPVDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 16:03:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231124AbiLPVDF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 16:03:05 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FAAE6B203
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 13:03:04 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 54E92852EB;
        Fri, 16 Dec 2022 22:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671224582;
        bh=ErC1ghR1dYxyAJebDS9i3eNUvGO+8zwQgee+NdEw+so=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=J390uTTXCgQi6k3AKNNBtiPH0D/bYcYugZwEIhDEkiOsVj84KQQOu/KwlJa1kaxZY
         DK8t0JKl2653o3b/sCki/3ZR4ckL+WW6FqlT13b+sCfy9QZeyNTCwUae0v8zBP1EgI
         l6FlhHEmXm1DCeZXakcrxCYM4WzjOqBGaRKC+xXTSYlydBE8x44mAwDTeZq777aBDp
         w1GqHKVcAh0HP86odXE2v82971V6odOWNsZ6nn9ItYA8CHsCR3PC+0KIbdpXC+lKJ2
         nsbtx9Hc8YGqFOybTUwODrDtpRPLN8Vpk2uz8EVcccVyXNdK/w/Gc+HGVH6RE/hEr5
         JJrApB8hNteWA==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 4/4] dt-bindings: arm: Move i.MX8MM Cloos PHG Board to TQM entry
Date:   Fri, 16 Dec 2022 22:02:44 +0100
Message-Id: <20221216210244.591865-4-marex@denx.de>
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

The i.MX8MM Cloos PHG Board is based on TQ-Systems GmbH i.MX8MM TQMa8MQML SOM,
which results in compatible string in the form:
"vendor,custom-board", "tqm,som", "fsl,soc"
Move the binding entry so this triplet can be matched on.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index ab01e3e66b734..88a92dac655bf 100644
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
2.35.1

