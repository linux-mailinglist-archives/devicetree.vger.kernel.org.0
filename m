Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A60B64E4A3
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 00:22:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbiLOXWB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 18:22:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbiLOXVz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 18:21:55 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 149E062E89
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 15:21:53 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 126A585338;
        Fri, 16 Dec 2022 00:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671146511;
        bh=8x7iVlRiZpan8NLnKso8+jL1Aj6x8VqLW3957q7IrsE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=YCVV34wH8KmrfRoNBdVrLhpyN7Dxh8Cr/+EfDcXYrU+VrU9osH788Ba1bhkCfB3oj
         wwZBPnsJD2AZFp7/4evYvpT2Rc/CuRpookPAYZv9wOOPomzB2PDwdFJSmfxnB2wdDf
         S9PiCOO303rnybshIKbJ8Qa6stwF9BAz/Nw/cDiMKMCf5Fc74cG7Xqssiz5Ly0KVLi
         mK+qGKqKwkrE1T1sRc0ZOJUQd7/nAsJ3bApBlkhK9J3ZbxSIrVd6DlfBcdK/X1IyUj
         O7NR9jdudR6vEGoCXNqVmyIyzVShBwLYQXOaCN7YWQtcvwYz7i+NPd7EnECKtSk2Xv
         HHT1nw+5g7/4g==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 4/4] dt-bindings: arm: Move i.MX8MM Cloos PHG Board to TQM entry
Date:   Fri, 16 Dec 2022 00:21:37 +0100
Message-Id: <20221215232137.144256-4-marex@denx.de>
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

The i.MX8MM Cloos PHG Board is based on TQ-Systems GmbH i.MX8MM TQMa8MQML SOM,
which results in compatible string in the form:
"vendor,custom-board", "tqm,som", "fsl,soc"
Move the binding entry so this triplet can be matched on.

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
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 04f4179a52ab7..16609aa41f462 100644
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
@@ -900,6 +899,7 @@ properties:
           one compatible is needed.
         items:
           - enum:
+              - cloos,imx8mm-phg           # i.MX8MM Cloos PHG Board
               - tq,imx8mm-tqma8mqml-mba8mx # TQ-Systems GmbH i.MX8MM TQMa8MQML SOM on MBa8Mx
           - const: tq,imx8mm-tqma8mqml     # TQ-Systems GmbH i.MX8MM TQMa8MQML SOM
           - const: fsl,imx8mm
-- 
2.35.1

