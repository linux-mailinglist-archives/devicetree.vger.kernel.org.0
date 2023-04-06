Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6454C6D9CEE
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 18:01:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229502AbjDFQBh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 12:01:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbjDFQBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 12:01:36 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD43C93E5
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 09:01:34 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 14E7686020;
        Thu,  6 Apr 2023 18:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680796892;
        bh=HJXahDN18qgrwvQazJFLHlIx52MZLTTmbp6zm77TZVg=;
        h=From:To:Cc:Subject:Date:From;
        b=CmC8XR7iomxuKHrPieNcqnPltspH/vjCLzi9Gl2i3EnehrOwQvDNxMzgqm5tdEvv/
         uVvUbtPztGkzJG+N3YaphKeSo2uxwybuH/NljgmFW4pTfM07wccg0G7TxKshZeRJ1v
         49Il0FlBHQ8KkUGH8nsHttG2oQnlkeK2bDkwDeGcFlJ0Knp52QXeQ8c5DjxtKfMm+E
         g9a0RhvCCfrIh8xir5iSWnR69VujhpEGiFYrtgXv02tj5pqOOxS6pPQISpLtozLAHe
         4QdiiWHZEw2RJ0pJ2KgExiFWqbm41dqPZOa8ObGPirBb3w1uA2lJE2JmDeZkxojLCp
         yG+iDVigHCPNA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
Subject: [PATCH v6 1/2] dt-bindings: arm: Add Data Modul i.MX8M Plus eDM SBC
Date:   Thu,  6 Apr 2023 18:01:15 +0200
Message-Id: <20230406160116.10071-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
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
V3: No change
V4: Rebase on next-20230127
V5: Rebase on next-20230317
V6: Rebase on next-20230406
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index b175f2b1bd300..e956c2a56c3e9 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1007,6 +1007,7 @@ properties:
         items:
           - enum:
               - beacon,imx8mp-beacon-kit  # i.MX8MP Beacon Development Kit
+              - dmo,imx8mp-data-modul-edm-sbc # i.MX8MP eDM SBC
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
               - polyhex,imx8mp-debix      # Polyhex Debix boards
-- 
2.39.2

