Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F86859B028
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 22:00:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231917AbiHTT6b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:58:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231799AbiHTT60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:58:26 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 011731A06F
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:23 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id x19so4262920pfq.1
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc;
        bh=3GkIT6pSt7j0OC2fKZRZbaBy0BVVdg7j70Ydfc3O5b0=;
        b=bGZx4rO7iu3DSa6SUqWyU3AuyXoBOtB9RgvJWW4H1B9dvgQ/r1rM4mM0xV3R5mcev7
         mJWtjla2wR9d0t8D8f9OrVhS3F2mNFPyJJtfACwiTrunpeDnWDvH+EcgqA+Js7z9KHzg
         nHc5OiuxSnY/CB2LJZCYxz7/k+3eOk+xf7wrjXFjMtfeALLcKJJcnfcC8wyMTg/hgcsl
         x7NnFn0h7Uq0GGC2JtewVlcLt3qhaQ1v0l2Qwvx9dwT+Lt3DY/g9fCl/qS5syw6vW6Mc
         CGHZ9skfauP7fKd1eGdb0xGHfQgOYMndDXV0kjoUwkOz4GmQEVHnH3D+4u7JhvVnPwR8
         mvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=3GkIT6pSt7j0OC2fKZRZbaBy0BVVdg7j70Ydfc3O5b0=;
        b=IzI7EEHLasztWo4gNCpZWeKOQULmDWIQcOEzOte9erGO9JIGAitctM0V9+OGV3i5WE
         QIPDi22HAsoipSro2r3P1C7GgaofoqsmWNvESnlFFWgG+DUwH92ydEV6S6U/oV9pjMbq
         pQf/OAcG4aAzci2PP+jq6WVIScYyKXkoQMEti6Erb4KauDhK6+MtU1yA0WcFHIpnvFCX
         T6utEayW2ZCLWl+VlXgwjDo+GlsEhcV2QVrdH9JY1iaLSOcRCcS7lwx0VMuDTkjgW3qJ
         kfeGHfLyexs5yCl4F+E/FPnagheun7IHEMUCQ7su7zlRhFE+6aCpGQtJQ9OaR3T7CrRG
         o5Fg==
X-Gm-Message-State: ACgBeo0gsLPMC6Xiccb6obmlil1oItMBrtefyGwaNQ7kgkN8IvjxKYg3
        U+9k14VFyw45zKG1KZh63A7fEA==
X-Google-Smtp-Source: AA6agR4gL6gKO9pMS9x34t0MspxWRnznEGmVYRa1mMugNaPpAaTZTz3beSLd1W5Qt7qFW3uWZ1ezrw==
X-Received: by 2002:a05:6a00:2906:b0:52a:bc7f:f801 with SMTP id cg6-20020a056a00290600b0052abc7ff801mr14080753pfb.49.1661025503484;
        Sat, 20 Aug 2022 12:58:23 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id u66-20020a626045000000b005363bc65bb1sm2316794pfb.91.2022.08.20.12.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 12:58:22 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, brad@pensando.io,
        blarson@amd.com, brijeshkumar.singh@amd.com,
        catalin.marinas@arm.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        suravee.suthikulpanit@amd.com, thomas.lendacky@amd.com,
        ulf.hansson@linaro.org, will@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v6 04/17] dt-bindings: spi: dw: Add AMD Pensando Elba SoC SPI Controller bindings
Date:   Sat, 20 Aug 2022 12:57:37 -0700
Message-Id: <20220820195750.70861-5-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220820195750.70861-1-brad@pensando.io>
References: <20220820195750.70861-1-brad@pensando.io>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Brad Larson <blarson@amd.com>

The AMD Pensando Elba SoC has integrated the DW APB SPI Controller

Signed-off-by: Brad Larson <blarson@amd.com>
---
 .../devicetree/bindings/spi/snps,dw-apb-ssi.yaml      | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index 37c3c272407d..403d6416f7ac 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -37,6 +37,15 @@ allOf:
     else:
       required:
         - interrupts
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amd,pensando-elba-spi
+    then:
+      required:
+        - amd,pensando-elba-syscon
 
 properties:
   compatible:
@@ -75,6 +84,8 @@ properties:
               - renesas,r9a06g032-spi # RZ/N1D
               - renesas,r9a06g033-spi # RZ/N1S
           - const: renesas,rzn1-spi   # RZ/N1
+      - description: AMD Pensando Elba SoC SPI Controller
+        const: amd,pensando-elba-spi
 
   reg:
     minItems: 1
-- 
2.17.1

