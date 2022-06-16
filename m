Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF36054E349
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 16:22:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232449AbiFPOWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 10:22:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377665AbiFPOWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 10:22:31 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7649E222
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 07:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655389349; x=1686925349;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=XVTLhpXWBwTKPZQxe1h6OqqPZE8+Y0R+M4AJOTN7qxM=;
  b=PvTmmZhh7wtLae8Ssdgz0QvwDc937J0V+7IfFIbDs/AQ7tX0zQjUGQke
   2aZBSWu0UBpiMRjfXCDZZAGFOV3bmf1OFE8yoKx6APaXBUp3T54vLXTJ8
   4dpKvdhv4eltMAxT+YQbi0qtKaX9Oae9sZb+gV8zMk/O45nWIC0Shq/1k
   ZKATV0lt75pEccjjP0YgaGs1Z/ntDc4IrwmxMJAeJQZ47sN++ZwEPw6vp
   R0wVo5FpDN/fwn7yFfpgLb6l5mwf4hnn35IycbXnH2vJkSPkUL38A6D9F
   vx0QIgxDU1c4EiJqw3k/qSQiKLHI5BLGb4kDNn6gBjRQKW9nWm6uXzMcr
   w==;
X-IronPort-AV: E=Sophos;i="5.92,305,1650924000"; 
   d="scan'208";a="24497080"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Jun 2022 16:22:26 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Jun 2022 16:22:26 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Jun 2022 16:22:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655389346; x=1686925346;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=XVTLhpXWBwTKPZQxe1h6OqqPZE8+Y0R+M4AJOTN7qxM=;
  b=IfP3/l207vQTD75X0axsq71/swpmBJplRKEG99eQkfVRnkDAe/YauDR6
   X4NNlSWPtLcnV6IAfDvMzzqxOSRncYh4RmmAG2oi/yG97+hw2CwoGeck6
   bALZDDaZ5F92oh9UccTcn4KplNo7oHe8cgfg2i5NIxrPl64lk9XGguWLa
   8vSrdx3AzmSG+QxvUDKAehYaz7UYou0a0WSp070pbosan9O08KR0w1eZS
   KlHXMsoLmVlyF6vKjS6HJZzwVITR56kXgsUrAAlrflOWc3buiWaMCoLxI
   /E/hihukzWJrzNOcRfFFkiB4ichwqiYYtJ1J3+P/BkylwKTktRLK5buua
   A==;
X-IronPort-AV: E=Sophos;i="5.92,305,1650924000"; 
   d="scan'208";a="24497079"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2022 16:22:26 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E9A2D280072;
        Thu, 16 Jun 2022 16:22:25 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Markus Niebel <Markus.Niebel@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/2] dt-bindings: arm: add TQMa8MPxL board
Date:   Thu, 16 Jun 2022 16:22:20 +0200
Message-Id: <20220616142221.3986670-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
References: <20220616142221.3986670-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Niebel <Markus.Niebel@tq-group.com>

TQMa8MPxL is a SOM family using NXP i.MX8MP CPU family
MBa8MPxL is an evaluation mainbord for this SOM

The SOM needs a mainboard, therefore we provide two compatibles here:

"tq,imx8mp-<SOM>" for the module and
"tq,imx8mp-<SOM>-<SBC>"

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7e5cd4fe5809..98eae69d8eff 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -958,6 +958,18 @@ properties:
           - const: toradex,verdin-imx8mp          # Verdin iMX8M Plus Module
           - const: fsl,imx8mp
 
+      - description:
+          TQMa8MPxL is a series of LGA SOM featuring NXP i.MX8MP system-on-chip
+          variants. It is designed to be soldered on different carrier boards.
+          All CPU variants use the same device tree hence only one compatible
+          is needed. MBa8MPxL mainboard can be used as starterkit or in a boxed
+          version as an industrial computing device.
+        items:
+          - enum:
+              - tq,imx8mp-tqma8mpql-mba8mpxl # TQ-Systems GmbH i.MX8MP TQMa8MPQL SOM on MBa8MPxL
+          - const: tq,imx8mp-tqma8mpql       # TQ-Systems GmbH i.MX8MP TQMa8MPQL SOM
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
2.25.1

