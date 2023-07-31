Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE6A77691A7
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbjGaJZo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:25:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230008AbjGaJZO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:25:14 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47717E43
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690795424; x=1722331424;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NZc8K/jLEpMab3Femf5PHGMs/QfnQskzvriXT1ia+3g=;
  b=LLK0+HX1nYv54ceCxw8oejOhaRuIOV8v9WSUsr3LaY29iw/khyGWSzIV
   ja9z5CFMUVpVjWJcQRloAclX6rhdMWjrn5TsS1Z2HT9XhVX6FwdlvtRcV
   ptiyygsa1f/SXtEWOgMYdScDYAslnF/2c+jBBMybiDAiYVJC5rzDw2Egc
   yPXm9y9OwydRxIQrBvFthRsbIrRVYhGAM+UFx0Y2wpJbG6Br6/w9X46Vi
   t6s7YFWjCDVHzpVkHrInTa7RCQ/L3RNa2PiE4bplp6AvBaL6R8YLO2yuf
   rYJmGLPapVy8gfI/eMYRV8AQr0uA0JbTRHXrc4hP/9Xp26AuSkXpJ11kU
   w==;
X-IronPort-AV: E=Sophos;i="6.01,244,1684792800"; 
   d="scan'208";a="32199753"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 Jul 2023 11:23:38 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C0F40280085;
        Mon, 31 Jul 2023 11:23:37 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc:     Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/3] dt-bindings: arm: fsl: add TQ-Systems LS1021A board
Date:   Mon, 31 Jul 2023 11:23:29 +0200
Message-Id: <20230731092331.358427-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731092331.358427-1-alexander.stein@ew.tq-group.com>
References: <20230731092331.358427-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Matthias Schiffer <matthias.schiffer@tq-group.com>

TQMLS102xA is a SOM family using NXP LS1021A CPU family.
MBLS102xA is an evaluation mainboard for this SOM.

Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 33e3969b246f..a1b5beab2881 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1312,6 +1312,16 @@ properties:
               - fsl,ls1021a-twr
           - const: fsl,ls1021a
 
+      - description:
+          TQ-Systems TQMLS102xA is a series of socketable SOM featuring
+          LS102x system-on-chip variants. MBLS102xA mainboard can be used as
+          starterkit.
+        items:
+          - enum:
+              - tq,ls1021a-tqmls1021a-mbls102xa
+          - const: tq,ls1021a-tqmls1021a
+          - const: fsl,ls1021a
+
       - description: LS1028A based Boards
         items:
           - enum:
-- 
2.34.1

