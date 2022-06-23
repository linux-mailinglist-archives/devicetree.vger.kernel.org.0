Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 529D6557E00
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 16:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231627AbiFWOlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 10:41:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbiFWOl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 10:41:28 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD8245AC3
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 07:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1655995285; x=1658587285;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=hSwy0fMvgAC7wmiTrxw2LO9UhpO2ccK6qMrCxwvZDWk=;
        b=r3r7lhGvv/XvC5OQ9VdBQYnLkORcELQuBe0S6FJlkejEXrCaQ9HB+AZG8VCIef1H
        lF9JCBqTBLfLn68qcgGbUPzYT1IRiOu+RM6PZhwpHQ80HEJXZSiXB1doZd5jGO2a
        CiMaAAPMGfdmJ85eJcxC6R4Iw7MRHvKZPHzIYaNw858=;
X-AuditID: c39127d2-b5e2e70000001dbe-b8-62b47b94d5f2
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B1.50.07614.49B74B26; Thu, 23 Jun 2022 16:41:24 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022062316412466-228334 ;
          Thu, 23 Jun 2022 16:41:24 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH v4 1/3] bindings: arm: fsl: Add PHYTEC i.MX8MM devicetree bindings
Date:   Thu, 23 Jun 2022 16:41:22 +0200
Message-Id: <20220623144124.1821570-1-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 23.06.2022 16:41:24,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 23.06.2022 16:41:24
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrILMWRmVeSWpSXmKPExsWyRpJBRHdK9ZYkg8avVhbzj5xjtXh41d+i
        78VDZotNj6+xWnT9Wsls0br3CLvF3+2bWCxebBF34PDYOesuu8emVZ1sHneu7WHz2Lyk3mPj
        ux1MHv1/DTw+b5ILYI/isklJzcksSy3St0vgyvg6dQZjwSTOioefO5gbGGeydzFycEgImEhc
        2J3dxcjJISSwjVFi2j7hLkYuIPs8o8S7RdPYQRJsAhoST1ecZgKxRQRcJDofrGMBKWIWaGSS
        2HHsAjNIQlggSOL3kx1gQ1kEVCUm7q4BCfMKWEqcf7yCBcSWEJCXmHnpOztEXFDi5MwnYHMk
        BK4wSpw99IwdokhI4vTis2AzmQW0JZYtfM08gZFvFpKeWUhSCxiZVjEK5WYmZ6cWZWbrFWRU
        lqQm66WkbmIEBuvhieqXdjD2zfE4xMjEwXiIUYKDWUmE98X/zUlCvCmJlVWpRfnxRaU5qcWH
        GKU5WJTEee/3MCUKCaQnlqRmp6YWpBbBZJk4OKUaGF1Y3vaz3XvDFfCIpeWn3Uqm+QJvFNKX
        VEpd6tHzlXm0S1im7W0fV+U0PanA83wfTiTv+/dj6cIId92orHCd74HxtRvrPxw1fN3g+60/
        Qb8qMYZvnm7lYk632XbP/F30RJkYLjDMlmdeyDbhi8yJM/vOTmaSqbzkxeotGX83XqMwvdTI
        +ON0JZbijERDLeai4kQARhbYokQCAAA=
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
---
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

