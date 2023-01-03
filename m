Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CB2865CA58
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 00:35:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238327AbjACXfa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 18:35:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237814AbjACXf0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 18:35:26 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1185D165A5
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 15:35:25 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id z26so47961389lfu.8
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 15:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=INGl8EC4lutAaxK7oytOrepZPv62csf4zgf/Dha7g08=;
        b=tUh9Qclbxwes1y19TozU8R6/M6yFHt0Tf/7Uk9vnG8eT3MKTfnZ5FPazeKrWpGZ/Zs
         FDHCXMqufboxBhsvccZNg7j44bIL/+rNLP0e+70HxzbS67f4vUXHkOdA5Xu5FdYxlegb
         o9SYgd7W1epIDogWkpbLTzQihLn16sHKSZAXrU9AjO4LQV47d63ABNKdaa+4pNhBMVhG
         Rd9wRbiao8kN0AZQX6BTdOQxwrfmAhr00DTDe3ra1H410N6socCrzWGi30Sz09qMVa42
         pJp1lr6X8SfBhq+IueeYNKSdxR/3/E5Z60dCUmMUcUZet97rlLEZYSY+kiS1oHAkmJky
         zDLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=INGl8EC4lutAaxK7oytOrepZPv62csf4zgf/Dha7g08=;
        b=QC6JDHiCXsNO33mdMr6X+iMnIthkSxV7WAus92zDJuntW2Rhl3tZNvahZJFMdGXxPx
         K4z0xwFGEDOPBeOrC6OQxZ9XS8bu3AuSmEsVVWlEjtjXWDfJB9RA/tEU0+JGFKMuNObz
         qqhxqDH8UZY2MzKCt4JPaKrCAjN9AWgqkMkpPJLC27nqp7jsBMc7RhjcSBIuXuClpQJI
         KK1AYXAudTR1L2L9X6hTo/0Cv/d2yz955r1azNEa1HycfYRIZof33Sxj4ZDUZ7zyoNa9
         jzyS5VZbmdSALwzmvUerieoVjn4BS628E7qmgattJ/ETA9enrqH6csa+QCQ55xRwcsZJ
         oFjQ==
X-Gm-Message-State: AFqh2kr0JMWwQx6fC1k+Uh+L3X838QjmjJ4/bEl0XI9CFheDO1HE9XSf
        VK1gJXvEylG6qXl19jdWXfXQxw==
X-Google-Smtp-Source: AMrXdXvAhYJCpYRkWDTIDmckimmTS2x6TV9+jF5DsOMDB10ivmTBIrIyYglIf0/N5/eHOWrkh4XH1g==
X-Received: by 2002:a05:6512:3ca9:b0:4b5:61c5:8927 with SMTP id h41-20020a0565123ca900b004b561c58927mr14359517lfv.42.1672788923444;
        Tue, 03 Jan 2023 15:35:23 -0800 (PST)
Received: from Fecusia.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id b11-20020a056512070b00b004a45edc1de2sm4939801lfs.239.2023.01.03.15.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 15:35:22 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 04 Jan 2023 00:35:17 +0100
Subject: [PATCH 1/7] dt-bindings: usb: Correct and extend FOTG210 schema
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230103-gemini-fotg210-usb-v1-1-f2670cb4a492@linaro.org>
References: <20230103-gemini-fotg210-usb-v1-0-f2670cb4a492@linaro.org>
In-Reply-To: <20230103-gemini-fotg210-usb-v1-0-f2670cb4a492@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Fabian Vogt <fabian@ritter-vogt.de>,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It turns out that this IP block exists in at least two
incarnations: FOTG200 and FOTG210. The one in the Gemini
is FOTG200, so add the variants and rectify the binding
for Gemini.

This affects things such as the placement of certain
registers.

It remains to be seen how similar this block is to the
third USB block from Faraday, FUSB220.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/usb/faraday,fotg210.yaml | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml b/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml
index 84b3b69256b1..12d4fc742f20 100644
--- a/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml
+++ b/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/usb/faraday,fotg210.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Faraday Technology FOTG210 HS OTG USB 2.0 controller
+title: Faraday Technology FOTG200 series HS OTG USB 2.0 controller Bindings
 
 maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
@@ -17,10 +17,11 @@ allOf:
 properties:
   compatible:
     oneOf:
+      - const: faraday,fotg200
       - const: faraday,fotg210
       - items:
           - const: cortina,gemini-usb
-          - const: faraday,fotg210
+          - const: faraday,fotg200
 
   reg:
     maxItems: 1
@@ -66,7 +67,7 @@ examples:
     #include <dt-bindings/clock/cortina,gemini-clock.h>
     #include <dt-bindings/reset/cortina,gemini-reset.h>
     usb0: usb@68000000 {
-        compatible = "cortina,gemini-usb", "faraday,fotg210";
+        compatible = "cortina,gemini-usb", "faraday,fotg200";
         reg = <0x68000000 0x1000>;
         interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
         resets = <&syscon GEMINI_RESET_USB0>;

-- 
2.38.1
