Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6FA559834F
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244497AbiHRMl6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:41:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244545AbiHRMl5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:41:57 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B1909F0D4
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:55 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id s3-20020a17090a2f0300b001facfc6fdbcso1053728pjd.1
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=w/eIG11HHSnHg0ClN4e35qvxOOPPs892T3rhZJVGces=;
        b=X+mH7okP3xyZbOuE0g8cVVwFKuAZNBngzPz+k0c2qtGUFhM6fqqDRF8xJ6qW56M1l+
         GZ/9HwwXRhD9zITmYPVfLRl/ORjxf7UdlpIPAV3EJ9OM3X1VKT4+oeocmKZWFA6Ixp0k
         gOexNZZ8YlKGxm2f/L6OS3CvHb4eIhFj9B6hWEfurxt3fL5/J5ofFCubKhRK6D4Pp+3q
         cAv5fEXoc0htBvl2Jjac+U1NiK37KuQE6xfBlK1ostArXv4dlSJOnJu7QFOXfSwSNfec
         aCzBtlzVDQ9j3BUPErFoXR15+IcYVTYHP/uLMsOtIYRSXBeUKhdw2QgHl7DdGQxKFThw
         7KKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=w/eIG11HHSnHg0ClN4e35qvxOOPPs892T3rhZJVGces=;
        b=excqDPYLi2UvBuD9gzoJ/ISeh5wYDtks9nj6TRua3y/xVU86qfLcj+sn1xT/uLVv3K
         pvS0BVP6EzJQTpihcN6yR1s/xBp7z0QdJPdXhje9ClUzuKreKtmMBxjL//e78E6+Tvtg
         VQOCr1mfuiRmL8OH1lad6ipqy4wk5T1FP4mJuODwWaulZN0ulBQqJ9qMyhBTfKmAk1iM
         uBDpnPP59UhcR6BGjuwKILETxyYgvhJEHl0h8bng10uqRIq1IodmHxXDDNFwBBAnJ8A7
         deYZqGFYUwzV65TmyQOm6QrSH7UPt5Uev2jM2B0HWzF8nEOnr6FCPMWmYKmGH4PDWFfx
         N0Mg==
X-Gm-Message-State: ACgBeo3CCIwMyAkq6uQPVmyGfhbnRw05NwU5/Tl3u0rg4z6xXqdiwU9U
        OY9meVx3MK6eEQL6C20NzrRYuQ==
X-Google-Smtp-Source: AA6agR6kkqhmJQX/A/6dDjZKfTS2xgHClQTRwauF/VDRGSG5xa1bT3Ck5d7kHTD6dVfmJYfDrq7XQQ==
X-Received: by 2002:a17:90b:1b4a:b0:1f5:5578:6398 with SMTP id nv10-20020a17090b1b4a00b001f555786398mr2945319pjb.122.1660826514927;
        Thu, 18 Aug 2022 05:41:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:54 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 04/19] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
Date:   Thu, 18 Aug 2022 18:11:17 +0530
Message-Id: <20220818124132.125304-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document dt-bindings for RV1126 PMU IO domains.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Krzysztof review-tag

 .../bindings/power/rockchip-io-domain.yaml    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
index 1727bf108979..d71fc72d4464 100644
--- a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
@@ -58,6 +58,7 @@ properties:
       - rockchip,rk3568-pmu-io-voltage-domain
       - rockchip,rv1108-io-voltage-domain
       - rockchip,rv1108-pmu-io-voltage-domain
+      - rockchip,rv1126-pmu-io-voltage-domain
 
 required:
   - compatible
@@ -78,6 +79,7 @@ allOf:
   - $ref: "#/$defs/rk3568-pmu"
   - $ref: "#/$defs/rv1108"
   - $ref: "#/$defs/rv1108-pmu"
+  - $ref: "#/$defs/rv1126-pmu"
 
 $defs:
   px30:
@@ -344,6 +346,34 @@ $defs:
         pmu-supply:
           description: The supply connected to PMUIO_VDD.
 
+  rv1126-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rv1126-pmu-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+        vccio6-supply:
+          description: The supply connected to VCCIO6.
+        vccio7-supply:
+          description: The supply connected to VCCIO7.
+        pmuio0-supply:
+          description: The supply connected to PMUIO0.
+        pmuio1-supply:
+          description: The supply connected to PMUIO1.
+
 examples:
   - |
     io-domains {
-- 
2.25.1

