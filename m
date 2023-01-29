Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75E7367FCAD
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 04:47:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229990AbjA2Drl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 22:47:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230106AbjA2Drh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 22:47:37 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E62602332F
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 19:47:34 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 46FE1801DB;
        Sun, 29 Jan 2023 04:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1674964051;
        bh=EIYFrgVw05VYeeYMfg/HoAEB/9abhtOFWl0QxjpRoiE=;
        h=From:To:Cc:Subject:Date:From;
        b=MV0f7C7bDVeSOitTcQWKrwf6aLwGjNSdvultWdSr0rft/W3SAAGTAkEkuPasrWif+
         TgwhAW7M0fDBTYpSu+IiRWiseL0A7+H/JnxgG26wutbRA0hMrlG/wZqzOhMIyVHUJq
         BrpPR/VqCD9X0L4SnPl0ymWT6UnLDH9W+j6aFYzER5vAvKJ6FCJgKLB3mh8VbDQ4QU
         9/DJEUW+amaeTX/GIuiM26GckkSzXfMjUqMEiwGOWDU3olAjZbPh+/c04U4aWB5p3m
         wuW8wFwi5L6pKRRLh5h3IM9Pr7GuEHuY8tYWKlGzmutVUx2wiSOsA2wSjt2j7m5xcm
         MrT9aQGj62qKQ==
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
Subject: [PATCH v4 1/2] dt-bindings: arm: Add Data Modul i.MX8M Plus eDM SBC
Date:   Sun, 29 Jan 2023 04:47:08 +0100
Message-Id: <20230129034709.259623-1-marex@denx.de>
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
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 442ce8f4d6756..365ff7fdf34c5 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1002,6 +1002,7 @@ properties:
         items:
           - enum:
               - beacon,imx8mp-beacon-kit  # i.MX8MP Beacon Development Kit
+              - dmo,imx8mp-data-modul-edm-sbc # i.MX8MP eDM SBC
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
               - polyhex,imx8mp-debix      # Polyhex Debix boards
-- 
2.39.0

