Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48F9E559858
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 13:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230181AbiFXLNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 07:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbiFXLNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 07:13:30 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9091535A92
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 04:13:29 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id h23so3946430ejj.12
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 04:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0zlxTVnvbHpKy0DwhHrN4iNAtQ8jGGjP1mEZMb9Cqfc=;
        b=BZ40dSXMcmZVrrFgwl+Svd+XT2GC1ZjSxQe9gAJ3i1aM9JQG6gU+AV52iu7Fpu+iwr
         AFTy+gCgeUc9N/+qCzAIBTlf1Ic+VQE6/mjVzQIaXg8pgqLlubqvTatTI0AS44CWLCA8
         2N44cmo7bFuCuT1V7gvfWlEI7yslFcHD0dH/5M1Mna5ZM7b2YQ13e8ssvEqwA93ACrfI
         5bAePAt2QvDX9rB3N64/NHt0r2E/fA0why7b54JgxQPrkaRdEJCNwkX80Iu130RMgidl
         oT8yc1svJdnXmoY92DuwF8QGj45XnrCYInJwlsyVWjLh8KJsw7u9b8nRVUP7NMuPRHIr
         X3OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0zlxTVnvbHpKy0DwhHrN4iNAtQ8jGGjP1mEZMb9Cqfc=;
        b=O6kmD241QKvF2K2dzc9kaoZVK4sDGBhnlyZ0mdwrN+DV+pcMRXFKK1Vq63c81RY+ag
         rOMnx4+iiBq+iMm/Q28WI0fcDN1kFIbPJXI5fsc4Y0y9FVU+wR9P+SayCV6eBBY4PmkO
         8y59kUeDbCaRQcEM5LXyZaN/92QexQMik6vvyaL0tadV3+hKXuzxEwVgukRzr83Bi7sa
         doC8Fd069459ZHHbiMuMwQPVw8OHgPxDKbc/DWTavfTBmloMjHWMONQJYikuwIqorGHl
         QAtCnjXQDXLxQqcxx+BTuQZnAeh4LjIgm5kEnaWPXIhOFTFmCwOEgpEIV/akbSAdJGK8
         RyXQ==
X-Gm-Message-State: AJIora8J/jJhkYvi5/mapKxD96V1bd1PbltKc0VGSCgUqZg46Upw5wDj
        PYhtbtyWk+ozSeSwoYsSk01+AQ==
X-Google-Smtp-Source: AGRyM1sIeHNs7Q5rcCDUucuqRivorQ8lvaJWn3CypW2Y1pnrMMJZxiu2vO3vGBttNwZ8JeR2lpFs/w==
X-Received: by 2002:a17:907:72d6:b0:722:e59a:72f4 with SMTP id du22-20020a17090772d600b00722e59a72f4mr13068601ejc.158.1656069208122;
        Fri, 24 Jun 2022 04:13:28 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id x22-20020a170906711600b00722e4bab163sm898877ejj.200.2022.06.24.04.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jun 2022 04:13:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dan Murphy <dmurphy@ti.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: leds: lp50xx: fix LED children names
Date:   Fri, 24 Jun 2022 13:13:25 +0200
Message-Id: <20220624111325.96478-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The lp50xx LEDs expects to have single-color LED children with unit
addresses.  This is required by the driver and provided by existing
DTSes.  Fix the binding to match actual usage.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Fixes: dce1452301e7 ("dt: bindings: lp50xx: Introduce the lp50xx family of RGB drivers")
---
 Documentation/devicetree/bindings/leds/leds-lp50xx.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
index f12fe5b53f30..c274a10bbde6 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
@@ -65,8 +65,14 @@ patternProperties:
           for the child node.  The LED modules can either be used stand alone
           or grouped into a module bank.
 
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
     patternProperties:
-      "(^led-[0-9a-f]$|led)":
+      "^led@[0-9a-f]+$":
         type: object
         $ref: common.yaml#
 
-- 
2.34.1

