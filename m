Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6754626D6FE
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 10:47:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726200AbgIQIp1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 04:45:27 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51704 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726142AbgIQIpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 04:45:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1600331403; x=1602923403;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Weoo3mAKzcnwFrCnd2LoDRznrHY7tepOpVj9Trnztro=;
        b=VJWjknhEcBkKSJ+hRYBhckx81Qd9viRKZk5oJLq6Th3r1kgGKjzdsOLoOBkRJDQU
        KTFFtTEdwDXYMMkyOciJ/Lz9XVoXf1sWyavFF9TK/cT28u8f5Z6quhqjAUjRvpOr
        3TF2HAG5IIV2a8zfm6N9XmXKysJKET9KdyoEev2+w+g=;
X-AuditID: c39127d2-253ff70000001c25-52-5f631e8bec44
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id A2.43.07205.B8E136F5; Thu, 17 Sep 2020 10:30:03 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020091710300353-444532 ;
          Thu, 17 Sep 2020 10:30:03 +0200 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v3 2/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 devicetree bindings
Date:   Thu, 17 Sep 2020 10:30:03 +0200
Message-Id: <20200917083003.96352-2-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200917083003.96352-1-s.riedmueller@phytec.de>
References: <20200917083003.96352-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 17.09.2020 10:30:03,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 17.09.2020 10:30:03
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPLMWRmVeSWpSXmKPExsWyRoCBS7dbLjneYN45E4v5R86xWjy86m+x
        6fE1VouuXyuZLf7v2cFu8Xf7JhaLF1vEHdg9ds66y+6xaVUnm8fmJfUeG9/tYPLo/2vg8XmT
        XABbFJdNSmpOZllqkb5dAlfG4vdTGAt+ilVMePCJrYFxskAXIweHhICJxME+gy5GLg4hgW2M
        Ep8vv2OHcK4xSuyfOJ+1i5GTg03ASGLBtEYmEFtEQFni1MY+sCJmgQYmieUHf7KDJIQFgiW2
        t89jAbFZBFQl1tw4ygiygVfARuLKLGuQsISAvMTMS9/ByjkFbCUWnJzJDlIiBFQy+ZsWSJhX
        QFDi5MwnLCDjJQSuMEr8v3GCBaJXSOL04rPMIDazgLbEsoWvmScwCsxC0jMLSWoBI9MqRqHc
        zOTs1KLMbL2CjMqS1GS9lNRNjMBAPjxR/dIOxr45HocYmTgYDzFKcDArifAeaIyPF+JNSays
        Si3Kjy8qzUktPsQozcGiJM67gbckTEggPbEkNTs1tSC1CCbLxMEp1cCoe/8Sn4HKU1Vrc5k4
        g4c8z240uuc/ufDmfpavf3B/shKv88RbEXd2Tl7Duz4ootVIKVRw1zQ2z64TcxnW1ooseH36
        qETlZ1/98KBlG3coH5k8p9ii9Mee9V993VPWs9gzia4WKz9e23vrY3n//ZvH2YM2dS5el7ZL
        7YjNs6qDLZ01++tqZK8qsRRnJBpqMRcVJwIArGeyBFICAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX6 based phyCORE-i.MX6, phyBOARD-Mira and
phyFLEX-i.MX6.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in v3:
 - This is a resend of the patches from last year rebased against
   current master.
 - Added Reviewed-by tag
---
 .../devicetree/bindings/arm/fsl.yaml          | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation=
/devicetree/bindings/arm/fsl.yaml
index 07de6afe792f..4a8b25271e64 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -156,6 +156,21 @@ properties:
           - const: gw,ventana
           - const: fsl,imx6q
=20
+      - description: i.MX6Q PHYTEC phyBOARD-Mira
+        items:
+          - enum:
+              - phytec,imx6q-pbac06-emmc  # PHYTEC phyBOARD-Mira eMMC RDK
+              - phytec,imx6q-pbac06-nand  # PHYTEC phyBOARD-Mira NAND RDK
+          - const: phytec,imx6q-pbac06    # PHYTEC phyBOARD-Mira
+          - const: phytec,imx6qdl-pcm058  # PHYTEC phyCORE-i.MX6
+          - const: fsl,imx6q
+
+      - description: i.MX6Q PHYTEC phyFLEX-i.MX6
+        items:
+          - const: phytec,imx6q-pbab01    # PHYTEC phyFLEX carrier board
+          - const: phytec,imx6q-pfla02    # PHYTEC phyFLEX-i.MX6 Quad
+          - const: fsl,imx6q
+
       - description: i.MX6QP based Boards
         items:
           - enum:
@@ -163,6 +178,13 @@ properties:
               - fsl,imx6qp-sabresd        # i.MX6 Quad Plus SABRE Smart De=
vice Board
           - const: fsl,imx6qp
=20
+      - description: i.MX6QP PHYTEC phyBOARD-Mira
+        items:
+          - const: phytec,imx6qp-pbac06-nand
+          - const: phytec,imx6qp-pbac06   # PHYTEC phyBOARD-Mira
+          - const: phytec,imx6qdl-pcm058  # PHYTEC phyCORE-i.MX6
+          - const: fsl,imx6qp
+
       - description: i.MX6DL based Boards
         items:
           - enum:
@@ -211,6 +233,21 @@ properties:
           - const: gw,ventana
           - const: fsl,imx6dl
=20
+      - description: i.MX6DL PHYTEC phyBOARD-Mira
+        items:
+          - enum:
+              - phytec,imx6dl-pbac06-emmc # PHYTEC phyBOARD-Mira eMMC RDK
+              - phytec,imx6dl-pbac06-nand # PHYTEC phyBOARD-Mira NAND RDK
+          - const: phytec,imx6dl-pbac06   # PHYTEC phyBOARD-Mira
+          - const: phytec,imx6qdl-pcm058  # PHYTEC phyCORE-i.MX6
+          - const: fsl,imx6dl
+
+      - description: i.MX6DL PHYTEC phyFLEX-i.MX6
+        items:
+          - const: phytec,imx6dl-pbab01   # PHYTEC phyFLEX carrier board
+          - const: phytec,imx6dl-pfla02   # PHYTEC phyFLEX-i.MX6 Quad
+          - const: fsl,imx6dl
+
       - description: i.MX6SL based Boards
         items:
           - enum:
--=20
2.25.1

