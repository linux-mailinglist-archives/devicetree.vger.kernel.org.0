Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC0D7552B7C
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 09:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345877AbiFUHKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 03:10:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236786AbiFUHKv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 03:10:51 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DF7021E27
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 00:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1655795448; x=1658387448;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=VwVcrYdLNiHI46Ai61lEjBR5b2e5WdM4T9CdsmvIA4o=;
        b=I1bpPa6/cL3s2LANXNOb6wZ22+bxAHpQYK0dLPooEbeLoZzxUFI01WCZCcRGUTg4
        RxCC1r0WQnhDoduZCcWcAc6gt6URIDqUCQbQ5LEFZ6ymNjcKIkSup1P3cfz1TU9k
        kJbrs0HAKVp/JIb3bRK8hz0laVLzPfUAsGwbFrbL9m0=;
X-AuditID: c39127d2-b5e2e70000001dbe-95-62b16ef83c88
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id FE.57.07614.8FE61B26; Tue, 21 Jun 2022 09:10:48 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022062109104853-207923 ;
          Tue, 21 Jun 2022 09:10:48 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH v3 1/3] bindings: arm: fsl: Add PHYTEC i.MX8MM devicetree bindings
Date:   Tue, 21 Jun 2022 09:10:46 +0200
Message-Id: <20220621071048.1876093-1-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 21.06.2022 09:10:48,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 21.06.2022 09:10:48
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCLMWRmVeSWpSXmKPExsWyRpJBRPdH3sYkg7PLTC3mHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAldHSuYWpoJ+zYs71LcwNjNPYuxg5OSQETCR6
        Gw4ydjFycQgJbGOU+LhzCjuEc55R4v60CWwgVWwCGhJPV5xmArFFBFwkOh+sYwEpYhZoZJLY
        cewCM0hCWCBIou3ZPLCxLAKqEu8/3gdr4BWwlHh/+gsrxDp5iZmXvrNDxAUlTs58AjZIQuAK
        o0T37J9MEEVCEqcXnwUbyiygLbFs4WvmCYx8s5D0zEKSWsDItIpRKDczOTu1KDNbryCjsiQ1
        WS8ldRMjMGQPT1S/tIOxb47HIUYmDsZDjBIczEoivDbcG5KEeFMSK6tSi/Lji0pzUosPMUpz
        sCiJ897vYUoUEkhPLEnNTk0tSC2CyTJxcEo1MPa/fH9V0I7t3Cbu+i9KIXtzzSUvls2ycK/7
        2eSeW8ryqH/WWv82jlsrtv8sTL+/7ssq/TU7fnI8qL72q3aya57bhcOftkqFV0uHPfnYk/51
        hd1h9yZFz9uL7tiaOV82cmpNOJH60epgT+en6WwRXYWXmz/dNO86sCjWMvLUmmdnyq7J/A+K
        1FBiKc5INNRiLipOBAB0RFaHRwIAAA==
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX8MM based phyCORE-i.MX8MM
and phyBOARD-Polis RDK.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v2:
- Added Acked-by

 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation=
/devicetree/bindings/arm/fsl.yaml
index ef524378d449..84134fdcf4f1 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -865,6 +865,12 @@ properties:
           - const: toradex,verdin-imx8mm          # Verdin iMX8M Mini Modu=
le
           - const: fsl,imx8mm
=20
+      - description: PHYTEC phyCORE-i.MX8MM SoM based boards
+        items:
+          - const: phytec,imx8mm-phyboard-polis-rdk # phyBOARD-Polis RDK
+          - const: phytec,imx8mm-phycore-som        # phyCORE-i.MX8MM SoM
+          - const: fsl,imx8mm
+
       - description: Variscite VAR-SOM-MX8MM based boards
         items:
           - const: variscite,var-som-mx8mm-symphony
--=20
2.25.1

