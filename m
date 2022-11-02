Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BD7161645C
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 15:04:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbiKBOEh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 10:04:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbiKBOEg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 10:04:36 -0400
X-Greylist: delayed 903 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 02 Nov 2022 07:04:35 PDT
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F0FDBC8
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 07:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1667396971; x=1669988971;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=TEWDcJcdLzrRGLl4Zr6RUQZWouxbMCR10Wc6sY07eKk=;
        b=If+BvLLTmrEIBep3zP5VEwwiAhyMRIK8UQ5BqZ0YWK7cf9iSYKTIBaChmrC1hsNv
        wfsN1EYp4QbfBBW1A4yh7UUkxRsrSF/n/GmjAaglj+1DFcz31LUlKp1+kBhov0qS
        BoKITB/zlGgI7X/CdyroJZUBagSEQq7DLQUQgHH9MfA=;
X-AuditID: ac14000a-833f270000003940-af-6362756b20a4
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 43.6D.14656.B6572636; Wed,  2 Nov 2022 14:49:31 +0100 (CET)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Wed, 2 Nov
 2022 14:49:39 +0100
From:   Wadim Egorov <w.egorov@phytec.de>
To:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
CC:     <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC AM64x based hardware
Date:   Wed, 2 Nov 2022 14:49:22 +0100
Message-ID: <20221102134923.3438022-1-w.egorov@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.25.0.11]
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJLMWRmVeSWpSXmKPExsWyRpKBRze7NCnZ4FKvkMX8I+dYLZZ/ns1u
        0ffiIbPFpsfXWC3e/DjLZNG69wi7xf+zH9gd2D02repk87hzbQ+bx+Yl9R7Hb2xn8vi8SS6A
        NYrLJiU1J7MstUjfLoEro3PqV+aCFvaK/o/32RsYt7J2MXJySAiYSEw4+I+pi5GLQ0hgMZPE
        mvULGSGcx4wScx/tYgGpYhNQl7iz4RtQBweHiICHxJcJViBhZoESibmTDjKD2MIC4RIHNp5j
        B7FZBFQkTnxZBhbnFbCU2LGrlRlimbzEzEvf2SHighInZz5hgZgjL9G8dTYzhC0hcfDFCzBb
        CCj+4tJyFpjeaedeQ80Jldj6ZTvTBEaBWUhGzUIyahaSUQsYmVcxCuVmJmenFmVm6xVkVJak
        JuulpG5iBAW3CAPXDsa+OR6HGJk4GA8xSnAwK4nw1p+NThbiTUmsrEotyo8vKs1JLT7EKM3B
        oiTOe7+HKVFIID2xJDU7NbUgtQgmy8TBKdXAWCcs8qw2zffBibOmZ2xnPBcpOcmX/51BruDh
        XzW1Dp9pUmWNu5++3vT7a7j+sw1Hk42Sd39LuVWstWtjulz110+OC/msZHT/VEQFvl/Ivji5
        4cSdU9teWGq19ja19T+Xehv3+O39X4mTjmi3uZVedZuacrpq//t9Dn5s/AWnJq8uO+LZpXVp
        mRJLcUaioRZzUXEiAAy+z/hcAgAA
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for AM64x based phyCORE-AM64 SoM
and phyBOARD-Electra RDK.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 28b8232e1c5b..2b9c045e39bf 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -38,6 +38,12 @@ properties:
               - ti,am642-sk
           - const: ti,am642
 
+      - description: K3 AM642 SoC PHYTEC phyBOARD-Electra
+        items:
+          - const: phytec,am642-phyboard-electra-rdk
+          - const: phytec,am64-phycore-som
+          - const: ti,am642
+
       - description: K3 AM654 SoC
         items:
           - enum:
-- 
2.34.1

