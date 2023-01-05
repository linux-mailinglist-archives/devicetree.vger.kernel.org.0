Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 576F065EE27
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 15:02:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234172AbjAEOCs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 09:02:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234199AbjAEOCG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 09:02:06 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2CAD321A8
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 06:02:04 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3EE50855A5;
        Thu,  5 Jan 2023 15:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672927322;
        bh=bPD1Qb/RvlLng4EUiKxqkwVBXYXFYUGrmZWvo3sJerA=;
        h=From:To:Cc:Subject:Date:From;
        b=fCfoD9inDzGhHvkZ8vLVxym5DNh6dkrAAd9KtpdS80RTGeTWLGhz767+v9CzBzZi/
         SX+uiDQvftnsSD44JEhFRZjmpfKzPc1Kjhbdd0YQgwCdVKUT4NMyffJy6pTwD00IqH
         2W9CSgAAxZEWmJIe34AhT7GpENdwFlhJx5ZW5uUOsDbtTkeYgCzbamtsnkP1gZe63X
         +vDzFAyBBrxdJKbM7QKDR5rq721BkgAOBK/5qbj7YxVQpBuB0CwKcCue/O3XvdsqZa
         6pxyRfOzZJm45MW3d9r9G9CFjxqx17Duh5Jcu5X16q9cVYSkaQkK7kW4m1OQHnuL5m
         KlxA9YSoxRxCg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: arm: Move MX8Menlo board to i.MX8M Mini Toradex Verdin SoM entry
Date:   Thu,  5 Jan 2023 15:01:32 +0100
Message-Id: <20230105140135.150502-1-marex@denx.de>
X-Mailer: git-send-email 2.39.0
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

The MX8Menlo board is based on i.MX8M Mini Toradex Verdin SoM
which results in compatible string in the form:
"vendor,custom-board", "toradex,som-nonwifi", "toradex,som", "fsl,soc"
Move the binding entry so this quadruplet can be matched on.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>
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
V2: - Rework the patch
V3: - Rebase on shawn/imx/bindings
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7ada83ff28b45..a67ffaa08d03c 100644
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
@@ -861,6 +860,7 @@ properties:
       - description: Toradex Boards with Verdin iMX8M Mini Modules
         items:
           - enum:
+              - menlo,mx8menlo                       # Verdin iMX8M Mini Module on i.MX8MM Menlo board
               - toradex,verdin-imx8mm-nonwifi-dahlia # Verdin iMX8M Mini Module on Dahlia
               - toradex,verdin-imx8mm-nonwifi-dev    # Verdin iMX8M Mini Module on Verdin Development Board
           - const: toradex,verdin-imx8mm-nonwifi     # Verdin iMX8M Mini Module without Wi-Fi / BT
-- 
2.39.0

