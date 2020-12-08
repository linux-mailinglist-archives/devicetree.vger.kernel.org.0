Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 370E32D2FEA
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 17:40:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726810AbgLHQjL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 11:39:11 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:44826 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730459AbgLHQjL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 11:39:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607445492; x=1610037492;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=QY2k3Vom1TbQoA/x+dzMJiMPtXMa2QTg1zdcyrK4oY4=;
        b=ZAjpJlqmOiCaZvpFyAPFlR6aeifpdEQG2cy8KEou6CZtacT8McMNHPhNe6XSfDJw
        MAnU++sfuRHgvkJ1esSwvZkLmLZ7WSI9T+ciT4SRpbE5lbGaAVDuWacdbdT7IztV
        T9oSOArNBj7job8UNHzFH/AEkD3wFvn2jRkWJ6Mdh98=;
X-AuditID: c39127d2-96bff70000006435-ac-5fcfabf465a8
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id CC.23.25653.4FBAFCF5; Tue,  8 Dec 2020 17:38:12 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120817381183-940642 ;
          Tue, 8 Dec 2020 17:38:11 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree bindings
Date:   Tue, 8 Dec 2020 17:38:10 +0100
Message-Id: <1607445491-208271-4-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:12,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 17:38:12,
        Serialize complete at 08.12.2020 17:38:12
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGLMWRmVeSWpSXmKPExsWyRoCBS/fL6vPxBg+Wclm8X9bDaDH/yDlW
        i4dX/S3On9/AbrHp8TVWi9a9R9gt/m7fxGLxYou4A4fHmnlrGD12zrrL7rFpVSebx+Yl9R79
        fw08Pm+SC2CL4rJJSc3JLEst0rdL4Mp42HaZqeAxe8Xe5TtYGxh/sHYxcnJICJhI/H20gL2L
        kYtDSGAro0TH9eXMIAkhgXOMEq8P2YHYbAIaEk9XnGYCsUUEXCQ2T3jGBNLALPCIUeLthGWM
        IAlhgSCJr6972UBsFgEViQWvm8E28Ao4Sxy7+5UNYpucxM1znWALOIEG9Vy/ywqxzFni35SD
        rCBDJQQamST2Nn5ih2gQkji9+CzzBEa+BYwMqxiFcjOTs1OLMrP1CjIqS1KT9VJSNzECw+7w
        RPVLOxj75ngcYmTiYDzEKMHBrCTCqyZ1Nl6INyWxsiq1KD++qDQntfgQozQHi5I47wbekjAh
        gfTEktTs1NSC1CKYLBMHp1QDY2XJlUVH2XxOLUyt9r2yX0BF1nWS2nV72zDbVIb7ob1f/x94
        dUBEveRUx/tpqoGznf7Y3/r+foKrlszjpQuzba/r8E0x3hhzpGSfFNfy492JK883Fu88cO3d
        ioieBx5Fe6bvmat76kvTL9e7cmdvWLT0BpfXam4MntCzRmjnyoqnuxemaf2feFCJpTgj0VCL
        uag4EQDG4TONKQIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX8MP based phyCORE-i.MX8MP
and phyBOARD-Pollux RDK.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 934289446abb..938b8392269a 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -433,6 +433,12 @@ properties:
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
           - const: fsl,imx8mp
 
+      - description: PHYTEC phyCORE-i.MX8MP SoM based boards
+        items:
+          - const: phytec,imx8mp-phyboard-pollux-rdk # phyBOARD-Pollux RDK
+          - const: phytec,imx8mp-phycore-som         # phyCORE-i.MX8MP SoM
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
2.7.4

