Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA8B126D6F5
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 10:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726348AbgIQIpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 04:45:09 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51698 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726285AbgIQIpI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 04:45:08 -0400
X-Greylist: delayed 901 seconds by postgrey-1.27 at vger.kernel.org; Thu, 17 Sep 2020 04:45:07 EDT
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1600331403; x=1602923403;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=YRai6qnabbddu7egjEjwFlo6sQ7qw2/V7y9yWxRav4M=;
        b=W1QJI3bGuOl0jI6w4s36/E8kpkQHM5I9flpReXZdlYXC24XyDVZU+nav4t29Ie+U
        Oh3rM5OJPWdAN7pxADn0rWQH/V3QsMJ8jsOVIm1ygDZFA/9KArtpYCTDXXWMl0zv
        DcFiXkfUUoCRMH7B6eNpyi/Cw3dEB1Y1I/LtGaayhg0=;
X-AuditID: c39127d2-269ff70000001c25-51-5f631e8b3dee
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 22.43.07205.B8E136F5; Thu, 17 Sep 2020 10:30:03 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020091710300349-444531 ;
          Thu, 17 Sep 2020 10:30:03 +0200 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v3 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL devicetree bindings
Date:   Thu, 17 Sep 2020 10:30:02 +0200
Message-Id: <20200917083003.96352-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 17.09.2020 10:30:03,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 17.09.2020 10:30:03
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFLMWRmVeSWpSXmKPExsWyRoCBS7dbLjneYNJPVYv5R86xWjy86m+x
        6fE1VouuXyuZLf7v2cFu8Xf7JhaLF1vEHdg9ds66y+6xaVUnm8fmJfUeG9/tYPLo/2vg8XmT
        XABbFJdNSmpOZllqkb5dAldG+/aj7AWP+CvW71nI2MB4iruLkZNDQsBEonXmVbYuRi4OIYFt
        jBLz+pezQzjXGCUOTdrOAlLFJmAksWBaIxOILSKgLHFqYx9YEbNAA5PE8oM/2UESwgJREksv
        /WAFsVkEVCUePj7GCGLzCthIPFmxnw1inbzEzEvf2SHighInZz5hARkkIXCFUeL/jRMsEEVC
        EqcXn2UGsZkFtCWWLXzNPIGRbxaSnllIUgsYmVYxCuVmJmenFmVm6xVkVJakJuulpG5iBIbn
        4Ynql3Yw9s3xOMTIxMF4iFGCg1lJhPdAY3y8EG9KYmVValF+fFFpTmrxIUZpDhYlcd4NvCVh
        QgLpiSWp2ampBalFMFkmDk6pBsa1uiY2V5fV60S0nPdxEFLtZvI65B11843Lmt6jp1jPer2c
        lFd8jTGW5+xZrtxHRe13VANtly+XludZkFh/+mRA2c22+Yf/LVoeU1Qcc+7hi32rLd6Unvth
        fPHPDsODF+YFqh79MnG5p/68/qv1sUYNXhcfbfrhG3E/4HKN/fsPCmkxExzYnzYrsRRnJBpq
        MRcVJwIA8lLU7z0CAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX6 UL/ULL based phyCORE-i.MX6 UL/ULL and
phyBOARD-Segin.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in v3:
 - This is a resend of the patches from last year rebased against
   current master.
 - Added Reviewed-by tag
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation=
/devicetree/bindings/arm/fsl.yaml
index 6da9d734cdb7..07de6afe792f 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -246,6 +246,15 @@ properties:
               - technexion,imx6ul-pico-pi      # TechNexion i.MX6UL Pico-Pi
           - const: fsl,imx6ul
=20
+      - description: i.MX6UL PHYTEC phyBOARD-Segin
+        items:
+          - enum:
+              - phytec,imx6ul-pbacd10-emmc
+              - phytec,imx6ul-pbacd10-nand
+          - const: phytec,imx6ul-pbacd10  # PHYTEC phyBOARD-Segin with i.M=
X6 UL
+          - const: phytec,imx6ul-pcl063   # PHYTEC phyCORE-i.MX 6UL
+          - const: fsl,imx6ul
+
       - description: Kontron N6310 S Board
         items:
           - const: kontron,imx6ul-n6310-s
@@ -277,6 +286,15 @@ properties:
               - toradex,colibri-imx6ull-wifi-eval # Colibri iMX6ULL Wi-Fi =
/ BT Module on Colibri Eval Board
           - const: fsl,imx6ull
=20
+      - description: i.MX6ULL PHYTEC phyBOARD-Segin
+        items:
+          - enum:
+              - phytec,imx6ull-pbacd10-emmc
+              - phytec,imx6ull-pbacd10-nand
+          - const: phytec,imx6ull-pbacd10 # PHYTEC phyBOARD-Segin with i.M=
X6 ULL
+          - const: phytec,imx6ull-pcl063  # PHYTEC phyCORE-i.MX 6ULL
+          - const: fsl,imx6ull
+
       - description: Kontron N6411 S Board
         items:
           - const: kontron,imx6ull-n6411-s
--=20
2.25.1

