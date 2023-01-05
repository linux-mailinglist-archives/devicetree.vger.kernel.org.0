Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3817E65F630
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 22:50:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234508AbjAEVui (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 16:50:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236243AbjAEVt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 16:49:59 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1816A6B18D
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 13:48:44 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 94F7C85405;
        Thu,  5 Jan 2023 22:48:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672955323;
        bh=1K9S3fR+zXtY79BpIW3VMc9zntz6QbsJtQH+ORMeT3k=;
        h=From:To:Cc:Subject:Date:From;
        b=JtBzCtBLiL6bplCKUGlxg+oaeHxoT/amcV74D4+09ts170DDkICrHrSGfKOx9VtiS
         eh/uZA26Qq3qf/mqLaFtbNJe7zOkugxsYGUu0bPstoPT5ot+RbqGl4PmsKPACFEiIL
         xo3LGKDI95blolOgkx2tvSIu+cVKs+wNePo8LAcCUTDddeal0JTbgfXwTRmhzqdA0u
         vEWNbOh3PQz75G6oowryl1C+79bBKsLK9Ph1UdApdpLpRHwvWmB9p8ryJcBAeR63cJ
         1P2i/BbhBwH4hb0njX2KdOx1s7CeHUO2Vk/D5ou7HL/IEDif4Gl20SkpNQXhvLUYYD
         Y4DikQapZPzOw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: Add Data Modul i.MX8M Plus eDM SBC
Date:   Thu,  5 Jan 2023 22:48:27 +0100
Message-Id: <20230105214828.314543-1-marex@denx.de>
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

Add DT compatible for Data Modul i.MX8M Plus eDM SBC board.
This is an evaluation board for various custom display units.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Denys Drozdov <denys.drozdov@toradex.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Li Yang <leoyang.li@nxp.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Matthias Schiffer <matthias.schiffer@tq-group.com>
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
V2: Add AB from Krzysztof
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 96efb9e8cdbb0..0f0b2f3a05f8f 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -931,6 +931,7 @@ properties:
       - description: i.MX8MP based Boards
         items:
           - enum:
+              - dmo,imx8mp-data-modul-edm-sbc # i.MX8MP eDM SBC
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
               - polyhex,imx8mp-debix      # Polyhex Debix boards
-- 
2.39.0

