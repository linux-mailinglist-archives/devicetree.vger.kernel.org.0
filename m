Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DABB2CF5DA
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 21:51:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388019AbgLDUuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 15:50:16 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:56224 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387781AbgLDUuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 15:50:16 -0500
X-Greylist: delayed 941 seconds by postgrey-1.27 at vger.kernel.org; Fri, 04 Dec 2020 15:49:25 EST
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607113983; x=1609705983;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Og/b+KuaiCrFr7z7+ktku+KZgIrWu02KxpK97xIRG4g=;
        b=HVE5sBZsgli8ddDE7pOA2wNbDKXdIp6b9ErZuOWyD+AbgnYHWaqR81g7xDwmys4U
        9iMys2Iaw0eTrIhttT8b+H+lJmwf3/9/oIfnQRa9RF3S7ZwoZX1cYIM/BeGOTOYK
        0Y1u3or7t4k5QDM3kUqP/bSPwF3qgqa4iBpEAVpQS1s=;
X-AuditID: c39127d2-981ff70000006435-73-5fca9cff7579
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 64.74.25653.FFC9ACF5; Fri,  4 Dec 2020 21:33:03 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120421330345-920468 ;
          Fri, 4 Dec 2020 21:33:03 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree bindings
Date:   Fri, 4 Dec 2020 21:33:01 +0100
Message-Id: <1607113982-109524-4-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:03,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:03,
        Serialize complete at 04.12.2020 21:33:03
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprELMWRmVeSWpSXmKPExsWyRoCBS/f/nFPxBrM26Vm8X9bDaDH/yDlW
        i4dX/S02Pb7GatG69wi7xd/tm1gsXmwRd2D3WDNvDaPHzll32T02repk89i8pN6j/6+Bx+dN
        cgFsUVw2Kak5mWWpRfp2CVwZv1o3MxZ8Yq9YcPssUwPjF9YuRk4OCQETif+z9rN0MXJxCAls
        ZZR4/e8dO4RzjlHiwMzJYFVsAhoST1ecZgKxRQRcJDofrAPrYBbYzSix5/M6sCJhAX+JG9+v
        gNksAioSza2dYA28As4Sk2+shlonJ3HzXCcziM0JNOj4vW+MILYQUM3/1d/BhkoINDJJnNi0
        lw2iQUji9OKzzBMY+RYwMqxiFMrNTM5OLcrM1ivIqCxJTdZLSd3ECAy3wxPVL+1g7JvjcYiR
        iYPxEKMEB7OSCG+s6sl4Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4rwbeEvChATSE0tSs1NTC1KL
        YLJMHJxSDYwbDk31fS6wwUSqdruIdYDDVqfaPz1+Rt+dXznIiDNkf//daDy3+UXNtIRaC7P7
        u15aN988KZD6kCt0/bX/H8VlKi782/ErX8Ot+cTX2UJWMz0CJ+889MrF4Yul0qvbTluUtfO+
        M/6qbb1UKBXfdIKJU2oyY/l3ztr8s/tmn/yZmZj6rm9XK6MSS3FGoqEWc1FxIgDI2SH5JQIA
        AA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX8MP based phyCORE-i.MX8MP
and phyBOARD-Pollux RDK.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 934289446abb..880d93092f37 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -433,6 +433,13 @@ properties:
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
           - const: fsl,imx8mp
 
+      - description: PHYTEC phyCORE-i.MX8MP SoM based boards
+        items:
+          - enum:
+              - phytec,imx8mp-phycore-som         # phyCORE-i.MX8MP SoM
+              - phytec,imx8mp-phyboard-pollux-rdk # phyBOARD-Pollux RDK
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
2.7.4

