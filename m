Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D55B4F880B
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 21:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbiDGT2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 15:28:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbiDGT2c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 15:28:32 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225A22856BE
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 12:26:20 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id n6so12854553ejc.13
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 12:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Pt10RsrkjtTqI7tRKxXhfbCG7SYw1TyGobgP4LoidEQ=;
        b=B0LYDf2Y+Y8ci2+SnKIs+kKAslu81N6UlsJtaXn3wPUwtuhkw11odPm7pEs+3JoEZV
         J4BBre+1VgUUzLmQ7lIF6XShZ2WlE//1gseL5lb5YuulRM7WfdCOgrOs2Ir50Oxu51kM
         nxmXFIjTyxTunUCyye9Zmt5eP/5svJiPZMm6TzWRzF5Dn25kkup4s67fUDvqTQV8kIUT
         OuRhtAPqLySb3n48UneZbAYAD5I2ZXyVdP4gZeeFH4XyTLzbW9dk2Un/F/PgZn9wIKDb
         sTbo6SUT6NoP1L35BmcxVs8hK5XqIqsjiPBIwoI5SdYi3xUWNeefQ0TYvTBEYxiY7t38
         H9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Pt10RsrkjtTqI7tRKxXhfbCG7SYw1TyGobgP4LoidEQ=;
        b=DPDJzceFKLJornj2l+Xk3RnzbBuEkrZaqDjQZOYJ2kGTHdWdKqWFWzt6w9mR/x7aL+
         cLT9Wm3N4//xOA3QaPmQ7bQgkRHAy9VVR5znexUexqUkYesiTilYynGAESapTJeaN9l0
         DTWp19wg8+AvPhl0BxbFQh8hrPJBvx3Ab1lgNeueHxVcN7YI4dNGAajHSYuc9Vgy7uIQ
         XL7+/R+/6mySJorWf324+Sb7ZB+rKGnJIqo+uHtucLab+DoYUjTiCiIR1sHVGXbMBxcw
         V3J+YEyGScwNIgHytDE5kodBHXWjsGDXpDlqok+w4UPNZUZPTwtXnmJIVQXPJS1Kj0P5
         gLQQ==
X-Gm-Message-State: AOAM530kdVVL2qpt83q1T5rdQ2YkwxTjdselj322paa49CJqHlYr+71b
        JOqkUaTd9zCfx2lvGs4lDkYXVA==
X-Google-Smtp-Source: ABdhPJwlZTR88OKvwkQEMzYCa334/1l2hJQ0quuyoq+NOf+z4h6Uqn6Xj7nBtcwnLLb8Dg8e0PylUA==
X-Received: by 2002:a17:907:2d90:b0:6d8:9fc9:ac36 with SMTP id gt16-20020a1709072d9000b006d89fc9ac36mr15114337ejc.28.1649359578493;
        Thu, 07 Apr 2022 12:26:18 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id z9-20020a17090655c900b006e83ffe41f3sm637893ejp.150.2022.04.07.12.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 12:26:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH] dt-bindings: usb: samsung,exynos-usb2: include usb-hcd schema
Date:   Thu,  7 Apr 2022 21:26:11 +0200
Message-Id: <20220407192611.15353-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove parts duplicated with usb-hcd.yaml DT schema and include it
directly.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/usb/samsung,exynos-usb2.yaml         | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
index 340dff8d19c3..d51f91d1139f 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
@@ -15,9 +15,6 @@ properties:
       - samsung,exynos4210-ehci
       - samsung,exynos4210-ohci
 
-  '#address-cells':
-    const: 1
-
   clocks:
     maxItems: 1
 
@@ -46,15 +43,6 @@ properties:
       Only for controller in EHCI mode, if present, specifies the GPIO that
       needs to be pulled up for the bus to be powered.
 
-  '#size-cells':
-    const: 0
-
-patternProperties:
-  "^.*@[0-9a-f]{1,2}$":
-    description: The hard wired USB devices
-    type: object
-    $ref: /usb/usb-device.yaml
-
 required:
   - compatible
   - clocks
@@ -64,6 +52,7 @@ required:
   - phy-names
 
 allOf:
+  - $ref: usb-hcd.yaml#
   - if:
       properties:
         compatible:
@@ -73,7 +62,7 @@ allOf:
       properties:
         samsung,vbus-gpio: false
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.32.0

