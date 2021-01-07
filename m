Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF242ECC78
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 10:14:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727416AbhAGJN3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 04:13:29 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:60278 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726436AbhAGJN2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 04:13:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1610010733; x=1612602733;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=yzBz9MGFyPPlIVwMDytNyoWoX4TZfTmcexzLYMJrQnM=;
        b=GGB+x2Pc1lVvCffedG6QoP2nyQu7Eup/jCqJcZsc1pLujWUh7QOxZN9EmQmUv9hc
        7L6EY3x/Z7io1IDfjNa3vuHHNstJP2T48+h2mB0CgTTOmZDfJISoaX0c0DOsAv5H
        GE+6b+rYYrAaRMVrafEL5+slUnMX3amDvi9TdLQh6kA=;
X-AuditID: c39127d2-0d3b770000001c86-10-5ff6d06df2d9
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 39.B1.07302.D60D6FF5; Thu,  7 Jan 2021 10:12:13 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021010710121273-64473 ;
          Thu, 7 Jan 2021 10:12:12 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v4 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree bindings
Date:   Thu, 7 Jan 2021 10:12:10 +0100
Message-Id: <1610010731-44779-4-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
References: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:12,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:13,
        Serialize complete at 07.01.2021 10:12:13
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLLMWRmVeSWpSXmKPExsWyRoCBSzf3wrd4gyW7WCz6DjJZvF/Ww2gx
        /8g5VouHV/0tzp/fwG6x6fE1VovWvUfYLf5u38Ri8WKLuAOnx5p5axg9ds66y+6xaVUnm8fm
        JfUe/X8NPNbNfc/u8XmTXAB7FJdNSmpOZllqkb5dAldGx83FTAUHOCrW32tmbWA8zdbFyMkh
        IWAiceDwCxYQW0hgK6PEy11mXYxcQPZZRokfbxaCJdgENCSerjjNBGKLCLhIbJ7wjAmkiFmg
        hUni5vzFYJOEBYIkPjz4BWRzcLAIqEgsuw8W5hVwkug7eosZYpmcxM1zncwgJZwCzhKrvlRA
        7HWSOHDzMjvISAmBRiaJnQ/aoI4Tkji9+CzzBEa+BYwMqxiFcjOTs1OLMrP1CjIqS1KT9VJS
        NzECg/DwRPVLOxj75ngcYmTiYDzEKMHBrCTCa3HsS7wQb0piZVVqUX58UWlOavEhRmkOFiVx
        3g28JWFCAumJJanZqakFqUUwWSYOTqkGRtft3x5uaNycH5sekc/Ifst0Iff9QwcUfi7vrbrU
        yC91wVMnK8gzOfSAwbOdy2RfJLtGzVBzSRANqvv8YuX0dXfSGeZxT+HamNJimHLyjZhQ/Hzp
        4BXRgv135n/93mPHqfM8UJPB0DPcapkhw9GFs2d8trpw+CR7/p3SCSu0Zqm6y/3I3zL5vRJL
        cUaioRZzUXEiADJcnyUwAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX8MP based phyCORE-i.MX8MP
and phyBOARD-Pollux RDK.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 34000f7fbe02..5ea9cd102ad9 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -707,6 +707,12 @@ properties:
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

