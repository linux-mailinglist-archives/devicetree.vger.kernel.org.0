Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 852C4549BC3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 20:39:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245319AbiFMSjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 14:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343699AbiFMSiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 14:38:23 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 773CF4EF6A
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 07:58:51 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 36CAF84463;
        Mon, 13 Jun 2022 16:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1655132329;
        bh=JfyiAT52/1A32gcqLtLco5Eqauy7kLt3UzYpWNqW68o=;
        h=From:To:Cc:Subject:Date:From;
        b=OGfZ8zNCiMxo9zwG1neJQykXn4VJCwkRZSfBSxoj2InpcZIVxkha0Fqpynqjyk2a5
         gy1T3+2rUZ6u1tAjc2AZ5B3mtgc90K0UboGwrVT2yJu389f61DMqy6DZQrPp3neCJN
         so1RFBBUZSWxkiM8/soiTknuP7oQKPC+vaX7gF+/I2NYEzq2hRQ7WDTmy4+4jK42j/
         5qMME1OmbFqyZy+H5+bAYmP80b91KhwR98jfZRe0Kcv5bSaAUP8KLSMv54Gw8dqxFv
         wn7RM38G7S8eFl6p7B1kJF0eZ0ALwD0PUGS43rNOOITVTi4J9UJozvFEt/BBwEKMDv
         o5NXEphkLowaA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Rob Herring <robh@kernel.org>,
        Fabio Estevam <festevam@denx.de>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus DHCOM and PDK2
Date:   Mon, 13 Jun 2022 16:58:25 +0200
Message-Id: <20220613145826.231499-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible string for DH electronics i.MX8M Plus DHCOM and PDK2
into YAML DT binding document. This system is a general purpose SoM and
evaluation board.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
V2: Add AB from Rob
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index ef524378d449b..adbceceae9726 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -914,6 +914,8 @@ properties:
       - description: i.MX8MP based Boards
         items:
           - enum:
+              - dh,imx8mp-dhcom-som       # i.MX8MP DHCOM SoM
+              - dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
               - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
-- 
2.35.1

