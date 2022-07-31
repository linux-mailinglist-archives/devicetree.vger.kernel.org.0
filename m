Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC8958602C
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:47:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbiGaRrz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:47:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233290AbiGaRry (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:47:54 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2808E08C
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:53 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id h21-20020a17090aa89500b001f31a61b91dso10102872pjq.4
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=rG8wijVAgCW9yVzpfh6lNJrXM3PN1zi+8WUS5WQuHsw=;
        b=qgY5oWd3HluDCJ8jCOZnZP7XAj0Dnttei0+0Tia5qVsEF7HeCpchR6Y0MTyTZspdTE
         I11XsCr9MH94hiitbZwCIUx7P84ncwI7orvzEgFunN/bmmQ6IPROeRfI1Sg+OUBLPtwk
         1Xo/gp/o1vzbs355z95cnqZgwGK3e5lCMJjvD4WYLHAHZvqgSzMwAPaRE8GU3nX66ekr
         b1+x3VVhzMeK7SN1B8WUF066Lr107GZZVFWWNUEe3USOa1IUPndB62VzvEOrKhvmkMd9
         ikR1vi3w29CPxFoVHx61j079eq8rQZoEO7mrQ1JscNd80E9BD3gZFXoQa+wIcs1J8AAI
         xKuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=rG8wijVAgCW9yVzpfh6lNJrXM3PN1zi+8WUS5WQuHsw=;
        b=oFkNazraYJKJcoD/83Uw33YXPjbGlyJANykRMtlSyORtfRr5D4qeqKXLm9SC7LFriw
         bUO7eguJbVhtUTcILHecM/35h040GpdxPLAaz6xthQsFlrdog4OE3CP7BCzm0CH1VRpl
         yhKWmubE6j9RNVDQuGyNW6B7g+YI7ke9gUxQt8RHt6LCf53SoSZ7AiPTamTZsY5BdhhC
         gGKR14n4Erphfgx/KcM3lOvXr/n6essOjC2kNwVzhMDM2O+29IYsYMK/nGzDm0Qcilfo
         5meMk+wEMquElIOvjOdA/orVDsTMYbShlaz8PKXRvVvsoB50kAQ2TuXMTho2XItx1P9S
         Y/Mw==
X-Gm-Message-State: ACgBeo3xosWgbLob8aY2ZtsC5ZxwjqzAfa1ZbpziHeWaUvoiGXT6QsFO
        71zQdRs+FuKYl7Bx6twgnCMBRw==
X-Google-Smtp-Source: AA6agR5AUh9sHkSiRYgQcky1ExTQDO3odRpi2v8GTxwVPcthyMXq8/aSOUPTXF98c610DgkQmkghQA==
X-Received: by 2002:a17:902:8508:b0:16c:46ff:53cb with SMTP id bj8-20020a170902850800b0016c46ff53cbmr13218377plb.168.1659289673432;
        Sun, 31 Jul 2022 10:47:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:53 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 04/20] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
Date:   Sun, 31 Jul 2022 23:17:10 +0530
Message-Id: <20220731174726.72631-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document dt-bindings for RV1126 PMU IO domains.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
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

