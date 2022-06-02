Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C55653B991
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 15:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235213AbiFBNVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 09:21:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231612AbiFBNV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 09:21:29 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06517270F3F
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 06:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1654176087; x=1656768087;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=VwVcrYdLNiHI46Ai61lEjBR5b2e5WdM4T9CdsmvIA4o=;
        b=sfimtrVmXz4jiaKKlY3V3HlwTsJR31gZCEPTwdj0KSG3O0KJ88dxj84NJyWwKPEn
        ph8yzsCkazGP7qlfDeCELWSxnU24veeSCvVoiXs0JBwirRPqBPQkhCjwHvTf4RSn
        SDUKsfWTMP5rp9PP4Qzygn7dWfm1fsCyrCNr28Y+vsA=;
X-AuditID: c39127d2-b5e2e70000001dbe-76-6298b957c978
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id C9.04.07614.759B8926; Thu,  2 Jun 2022 15:21:27 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022060215212699-87582 ;
          Thu, 2 Jun 2022 15:21:26 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH v2 1/3] bindings: arm: fsl: Add PHYTEC i.MX8MM devicetree bindings
Date:   Thu, 2 Jun 2022 15:21:25 +0200
Message-Id: <20220602132127.95333-1-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 15:21:27,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 15:21:27
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrELMWRmVeSWpSXmKPExsWyRpJBRDd854wkg0vnJCzmHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAldHSuYWpoJ+zYs71LcwNjNPYuxg5OSQETCSm
        TrnK3MXIxSEksI1RYv33v+wQzllGiVcHHrGCVLEJaEg8XXGaCcQWEXCR6HywjgWkiFmgkUli
        x7ELzCAJYYEgiXO7zoHZLAIqElO3vGXrYuTg4BUwl5h7tRhim7zEzEvfwTbzCghKnJz5hAUi
        foVR4tKXJAhbSOL04rNgY5gFtCWWLXzNPIGRbxaSlllIUgsYmVYxCuVmJmenFmVm6xVkVJak
        JuulpG5iBIbr4Ynql3Yw9s3xOMTIxMF4iFGCg1lJhLdk19QkId6UxMqq1KL8+KLSnNTiQ4zS
        HCxK4rz3e5gShQTSE0tSs1NTC1KLYLJMHJxSDYztyRmNa0T6H6p7JT2W+s/Wv/X1FturFYWn
        irI7c2fmbf0e8ux/U1hEa+qdRQzP9jFsPrD9V1rQAqayY9rBN3fMDpb+dbn1XFT4n6qrS5mM
        FtlorTLsDllruviO1b+UpmrN9RU13MV9ep45/JsdvUOliw9wWG8zvMTkP1U54ZL8yZV+h9rj
        nJRYijMSDbWYi4oTAQRL1BtFAgAA
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

