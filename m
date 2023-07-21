Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A47D75C2E4
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 11:22:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231758AbjGUJWC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 05:22:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231276AbjGUJWB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 05:22:01 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DB0330CB
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 02:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689931319; x=1721467319;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9fM2m3JsEAG7dDEJQOFnOeUaJUlGYhFrsi+dfPEc47I=;
  b=Z1ygagD8fkfVOE9ZyQXaYFhV5pVqJKA4Q/beYc9pUAVsvSpSn8vFyD5J
   x0gjQCkEqfsgCbibBozBpRNjuzV3a98dXk9Gn+IxesLtLubGodz0AQLNY
   aYItSrDvxvQqnSjmfAYwn42adAJcwasVFh9xF9fpgVJliloxuY/5p/KZ9
   /+E5TXXGM3ryS2DlvKwlWjGOWgtdtJolCcA3yoz7DD9E4ACwfVF0Lr2M1
   b8MT/0Kqaw59nlkTLCtQKm39YXJ7MH6VEnY0SDWINsMnpmmCOtetF8alN
   LkdgfOuFaiGJvz6gQ/jD8JKQATBNMjgyzre5OPMHei7YdvVY2Y4C6zNRt
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,220,1684792800"; 
   d="scan'208";a="32050120"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Jul 2023 11:21:52 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 88A2C280084;
        Fri, 21 Jul 2023 11:21:52 +0200 (CEST)
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
Subject: [PATCH v4 1/3] dt-bindings: arm: fsl: add TQ-Systems LS1021A board
Date:   Fri, 21 Jul 2023 11:21:44 +0200
Message-Id: <20230721092146.1214903-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230721092146.1214903-1-alexander.stein@ew.tq-group.com>
References: <20230721092146.1214903-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
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
index 8048c7f6a299..3d36817f4ed4 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1308,6 +1308,16 @@ properties:
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

