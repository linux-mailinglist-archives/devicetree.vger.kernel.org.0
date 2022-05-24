Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A3825323A7
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 09:08:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232288AbiEXHIi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 03:08:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234416AbiEXHIh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 03:08:37 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3065E85ED2
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 00:08:36 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id v9so10528648lja.12
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 00:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sZ0SEJMDewbb4cdbPD0390E8YQ7MceyC5EWnHO5cujc=;
        b=KXuQy/4sTDlEX2yWV3xfM7vPhghHFjvNnRWVTd4Xr6M/ZI7j/ZA37N21TdNtKJP6i3
         PaAokYnIvCy8XYCFz30GrUikPXizKG0WHINqTyBCXGZI5xGPMtbc2sVrovtxTNIyOt20
         yZQ81+OefVWaBbcCIc+XC3E9EpJ5o7Y5H084SqXPpu+IgCC+pWbaKh9RhluM2/AFSuFe
         XZyLo9quD1MG2OqAk+jE8AK8SFbdcCUAtp0FaDkFclSQaRKRwysJtWdIcBgPj/Dldx6e
         BJBjtXLlaRENiw4whox1d/zHPkq8oHEYmf+nFVSQUddVmUN307OfK7tYRcj1/kVrYNik
         fJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sZ0SEJMDewbb4cdbPD0390E8YQ7MceyC5EWnHO5cujc=;
        b=nONH04lUiE18EQ1x7HMJf5Sp6yiloMP7ZYclQusvweT+olQNjCF00l0PkzNYIMUnF0
         e0qGc99pU2xFNvi3xvxF+VqCKCWg/UOQOJZOWctex7nH+hPEXmZDfIKkboz9Vj2Jodc8
         M7IFh/3/OfH2KxhtYNzbLoH+9xN3wq70UzXBPTytzghdrQ2gjAsP8hrosIl/Z0E4Sg84
         G07r1rukmUU9O6oMftyoQXB+4Ybj9HQwWw+BvurmTZjN0Y2FXVbl09mkNaJhMA3enoC8
         TSCflqwpe/EKPEefYRuscYV2jKSesnjaq+/9StByL07q0cBS9vY9a1Dpz74PhQ6xLPAJ
         3ToQ==
X-Gm-Message-State: AOAM533EB4/gp+ZgYoVFvntyfCz9VPfL6WqIlAQghFPb7bvksZ243NQy
        RIGuo7pnVSlBJ26V7Q/ikWLJiA==
X-Google-Smtp-Source: ABdhPJwapjjxbwWshe3MtGo8eVeVq/7+DMcCfW6rPQEyrJ26Q1nW9d4OMJxhU/vduSauiMdRVL9UPQ==
X-Received: by 2002:a2e:88d5:0:b0:253:ea46:b00 with SMTP id a21-20020a2e88d5000000b00253ea460b00mr5407663ljk.399.1653376114467;
        Tue, 24 May 2022 00:08:34 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e12-20020a2e8ecc000000b0024f3d1daebdsm2237655ljl.69.2022.05.24.00.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 May 2022 00:08:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dan Murphy <dmurphy@ti.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Sven Schwermer <sven.schwermer@disruptive-technologies.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kyle Swenson <kyle.swenson@est.tech>
Subject: [PATCH v2 1/2] dt-bindings: leds: lp50xx: correct reg/unit addresses in example
Date:   Tue, 24 May 2022 09:08:14 +0200
Message-Id: <20220524070815.42997-1-krzysztof.kozlowski@linaro.org>
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

The multi-led node defined address/size cells, so it intended to have
children with unit addresses.

The second multi-led's reg property defined three LED indexes within one
reg item, which is not correct - these are three separate items.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

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

