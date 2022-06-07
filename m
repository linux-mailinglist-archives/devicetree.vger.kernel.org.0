Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8557953F7A5
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 09:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237758AbiFGHwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 03:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235220AbiFGHwy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 03:52:54 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E888355340
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 00:52:51 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id o10so21834303edi.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 00:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yz4IPbK/kjVXg2rtjKYX6ym7AFg337BC4YZaEJPRg3Y=;
        b=bErztxGS/sxqn/5MaEwtqSQKYl8etJxog1lP0bLx9F0yUteWXBG9NAmUfIQ0ynbJHT
         VeKqty9tWhHfRadz+G6Evu9yJpAiWHuvRPRY67jnsz/bD6lBhNmXVEo2/Buoo5qC9igU
         unmL5Twzz1YAIy74Wv4rWJCoGtDB9Jm3dtIzLDaISLt0gHWaKgnCqq6yB+D4z8p7KbCX
         d1xz3Knx31qe9F3lcupa+N4o/p/drV6u7zwjsAAKbYCjnI+5vyz6mh4rTZy343xVBEgK
         IlaZpcUvtlIJC6xEem+unWPYq9qcGRvdzBo2SvryeJaTVQ5AqtRcCjdmdbF6+rJiPIT9
         U9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yz4IPbK/kjVXg2rtjKYX6ym7AFg337BC4YZaEJPRg3Y=;
        b=Rl3ruzX4G+AeS74lZfrc8d75xf/47PTOOWro1uQmjWT2gjiGjQcPVobYM3zxubAmbH
         tiyZhULtKck75UkEkT5jd3sUuQwCVFLI7TgJR6NqMNXnZPO5hikr7kqh+PQJ5QnAxO+2
         IuuxF+/P+keGY1X3uExgBFauNDqgkejSwXz2/a62GN02Qv9GYaHEhIopa9/3Q8RGkzak
         SLQ4+/QtkTXM/0xpD9XlyeOuAJVktHoyvngQMfCMjqES1rN5OPgKNIBrVUguyr6MzURk
         LHNbIs38PBPU+wQWC+H+Zwe/Y8Pjjn/LYPdyKSvcuN51nKTYPen4BJUdhlbeU3HTxzY+
         1VRA==
X-Gm-Message-State: AOAM532gVFgGsY72Sq8lw6eLwr88XKCV1LUYf9tPEDMDwouhxwv8ol0n
        Ko6MOrdCgrAb5Vs6THIYzCSOdw==
X-Google-Smtp-Source: ABdhPJwkIeZfv38b59Ycb+if+OhPKhwi1qS4LboQmLNqhsMhCChDXB232li5lfdubeuGAHOgNuqsow==
X-Received: by 2002:a05:6402:2790:b0:431:4bb6:a6dc with SMTP id b16-20020a056402279000b004314bb6a6dcmr13559114ede.48.1654588370353;
        Tue, 07 Jun 2022 00:52:50 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m3-20020aa7c483000000b0042de29d8fc0sm9773731edq.94.2022.06.07.00.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 00:52:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dan Murphy <dmurphy@ti.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Sven Schwermer <sven.schwermer@disruptive-technologies.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Kyle Swenson <kyle.swenson@est.tech>
Subject: [PATCH v3 1/2] dt-bindings: leds: lp50xx: correct reg/unit addresses in example
Date:   Tue,  7 Jun 2022 09:52:46 +0200
Message-Id: <20220607075247.58048-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The multi-led node defined address/size cells, so it is intended to have
children with unit addresses.

The second multi-led's reg property defined three LED indexes within one
reg item, which is not correct - these are three separate items.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v2:
1. Minor grammar change in commit msg.
2. Add Rb tag.

Changes since v1:
1. Correct multi-led unit address as well (Rob).

Cc: Kyle Swenson <kyle.swenson@est.tech>
---
 .../devicetree/bindings/leds/leds-lp50xx.yaml | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
index f12fe5b53f30..29ce0cb7d449 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
@@ -99,35 +99,41 @@ examples:
                color = <LED_COLOR_ID_RGB>;
                function = LED_FUNCTION_CHARGING;
 
-               led-0 {
+               led@0 {
+                   reg = <0x0>;
                    color = <LED_COLOR_ID_RED>;
                };
 
-               led-1 {
+               led@1 {
+                   reg = <0x1>;
                    color = <LED_COLOR_ID_GREEN>;
                };
 
-               led-2 {
+               led@2 {
+                   reg = <0x2>;
                    color = <LED_COLOR_ID_BLUE>;
                };
           };
 
-          multi-led@2 {
+          multi-led@3 {
             #address-cells = <1>;
-            #size-cells = <2>;
-            reg = <0x2 0x3 0x5>;
+            #size-cells = <0>;
+            reg = <0x3>, <0x4>, <0x5>;
             color = <LED_COLOR_ID_RGB>;
             function = LED_FUNCTION_STANDBY;
 
-            led-6 {
+            led@3 {
+              reg = <0x3>;
               color = <LED_COLOR_ID_RED>;
             };
 
-            led-7 {
+            led@4 {
+              reg = <0x4>;
               color = <LED_COLOR_ID_GREEN>;
             };
 
-            led-8 {
+            led@5 {
+              reg = <0x5>;
               color = <LED_COLOR_ID_BLUE>;
             };
          };
-- 
2.34.1

