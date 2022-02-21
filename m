Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DBC64BD2D4
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 01:19:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238997AbiBUAS2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 19:18:28 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:51718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237932AbiBUAS2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 19:18:28 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6C123BF3
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 16:18:05 -0800 (PST)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B3F5981FDE;
        Mon, 21 Feb 2022 01:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1645402682;
        bh=J3FNwRLPlhCs6vtRQrH8U4lQjgqjyNOBWTPV0Rcougc=;
        h=From:To:Cc:Subject:Date:From;
        b=N3Oi4gw9JXnkTmxyp44+RjrCcfKemrQJb2p3BnAQAmlAOElD16bJNCxaV8IeGhnS5
         ggY2QjSDZ4BWJalrHen48mGDoGigbZ7gmabBJMgDnFxSVS+rFoM58bDQxzZ9e5RURW
         hBnebJHRrOSsmP/cxkslY08qLSA/VvjGuUwPMk7EDuGDiQA86eYrk5hGuN5HhQTEv5
         bax7rA/UG3Hh1g29mjlXv62YyVV6kIOvc3oYXzN+6Nb1lxlGu1N0HNgpbagaihQHYz
         YLwudoi3z/RySVXn9yqwhcOmGrJDiLNklCcQEFxGYeHH7gG8MD9Weh1vTZ6S36/crp
         nQhHayPAOuQtQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Mini eDM SBC
Date:   Mon, 21 Feb 2022 01:17:37 +0100
Message-Id: <20220221001738.148257-1-marex@denx.de>
X-Mailer: git-send-email 2.34.1
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

Add DT compatible string for Data Modul i.MX8M Mini eDM SBC board
into YAML DT binding document. This system is an evaluation board
for various custom display units.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 23e678232451e..bb53b3e469dd1 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -762,6 +762,7 @@ properties:
           - enum:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
               - boundary,imx8mm-nitrogen8mm  # i.MX8MM Nitrogen Board
+              - dmo,imx8mm-data-modul-edm-sbc # i.MX8MM eDM SBC
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
-- 
2.34.1

