Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9BB65EE24
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 15:02:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234028AbjAEOCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 09:02:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234506AbjAEOCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 09:02:07 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF9264BD6F
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 06:02:06 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C7C1E855AD;
        Thu,  5 Jan 2023 15:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672927324;
        bh=ArngokH9+VpRPmDODUuCRmiTd0oYilB+Y4XAlgqatQU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=gwGhGdWOE4eLcElBvbyn9WydHtAaSLM/F5Rfl1LpvBs02QTPBfgNRsQKwihHCeslg
         TU0Nr2K8KIk397W2a/JCMZFaUbFJah4ZBiAg+wnzNC2hTJl/shWxZ6EWFKZKwA0Vel
         Br5SYLv9NmCqL+4xy8IefIaZ2GYWdu4cX4YaVZSoZhvsKJrUjGKzIyJQk3HHJUjsu4
         orZMzVG/IUHHWdNI3mB6F6NDmdmio/33fSjyRaO6hab64C1P1DEVpb5p034x+f8bag
         LFP9RvYKg7qaff4TemIu1V59/GT2rUfjrBy/uUn8k69ILwhhVgACQWlMhKIyz/3OU8
         0P7Jmv2XqPcqQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        kernel@dh-electronics.com, devicetree@vger.kernel.org
Subject: [PATCH v3 3/4] dt-bindings: arm: Split i.MX8M Plus DHCOM based boards
Date:   Thu,  5 Jan 2023 15:01:34 +0100
Message-Id: <20230105140135.150502-3-marex@denx.de>
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
V3: - Rebase on shawn/imx/bindings
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index a060501f3db2b..7808eceb99063 100644
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
               - polyhex,imx8mp-debix      # Polyhex Debix boards
@@ -949,6 +947,12 @@ properties:
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
2.39.0

