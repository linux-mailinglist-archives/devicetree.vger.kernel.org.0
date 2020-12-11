Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69C322D76ED
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 14:50:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390607AbgLKNuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 08:50:03 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:46204 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404624AbgLKNty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 08:49:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607694536; x=1610286536;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=8lageQAnNI/+YVRQH9YGcm/TaK2KbVdn5xUEomvY5gQ=;
        b=H4UNNkjhGiX++5OOHjwS4E+97zMe/5Jb+C0awIzt9pFGzF5idun7kX6IN8HyhWlj
        ohVKFFXUB+JT3sj+PNl6JokmgHWMld3mJWQDyxTTov17DamxC3ktjiKQ/2qcxiZJ
        4FQKLY8E6mRBLXU86J9TjZqXACiGL+2GkGBp8wQi12s=;
X-AuditID: c39127d2-981ff70000006435-22-5fd378c8d474
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id AC.F7.25653.8C873DF5; Fri, 11 Dec 2020 14:48:56 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020121114485586-962995 ;
          Fri, 11 Dec 2020 14:48:55 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v3 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree bindings
Date:   Fri, 11 Dec 2020 14:48:54 +0100
Message-Id: <1607694535-417799-4-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
References: <1607694535-417799-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:56,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.12.2020 14:48:56,
        Serialize complete at 11.12.2020 14:48:56
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrALMWRmVeSWpSXmKPExsWyRoCBS/dExeV4gwPXeSz6DjJZvF/Ww2gx
        /8g5VouHV/0tzp/fwG6x6fE1VovWvUfYLf5u38Ri8WKLuAOnx5p5axg9ds66y+6xaVUnm8fm
        JfUe/X8NPNbNfc/u8XmTXAB7FJdNSmpOZllqkb5dAlfGgr6ZzAUHOCp+TGliamA8zdbFyMkh
        IWAicXvyNyCbi0NIYCujxP+FvcwQznlGiRd/PjGCVLEJaEg8XXGaCcQWEXCR2DzhGRNIEbNA
        C5PEzfmLwUYJCwRJvOrZBVbEIqAq8b/xEJjNK+AsseztDHaIdXISN891MoPYnECD1p2aABYX
        AqrZcO8F2BkSAo1MEu3HJjBCNAhJnF58lnkCI98CRoZVjEK5mcnZqUWZ2XoFGZUlqcl6Kamb
        GIGheHii+qUdjH1zPA4xMnEwHmKU4GBWEuGVZbkUL8SbklhZlVqUH19UmpNafIhRmoNFSZx3
        A29JmJBAemJJanZqakFqEUyWiYNTqoExMKflc+Y8BSYDnYaZx26s3XY+QkFFqebT5fSdE2+L
        fX0q3hO9fAOTKYNJerbQlEl7W8VVps68Fv/bIWZFccer90ydp83b0pWzry1L950eeOSONOv8
        5/fFpuw7m6jn/3314YzZ0ytF5BfHfPzvEaw9JfGJBfu/RS7Xk/72TT5qx3n7XWH1F/OTSizF
        GYmGWsxFxYkAW+dGMjMCAAA=
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

