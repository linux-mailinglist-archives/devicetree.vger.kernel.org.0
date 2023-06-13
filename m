Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B411F72E39A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 15:01:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242412AbjFMNBO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 09:01:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242427AbjFMNBJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 09:01:09 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD9731989
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 06:01:06 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so6678703e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 06:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686661265; x=1689253265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5TLZqf6X/lOVmCq6dcL8fAW/4Qa2W1ozlpyLia0p++0=;
        b=Cc8C3RlOC4doOxWhwCDaBv2LKpIC/95gqH2EsIhJxCZmXm6n004MXOc77OlF8ACOnN
         pGrI7hefBn7Lkk3Rx68bnltrYEC2lzph4N1MRE/Gnmnjly/E9Yu8ikMsNjKRAY7ipBX2
         hHYLwgxdfRz0yCu/5ZzTCFG1DZ0urz4I/2eq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686661265; x=1689253265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TLZqf6X/lOVmCq6dcL8fAW/4Qa2W1ozlpyLia0p++0=;
        b=Y0MXb3faJt50crQ+Q+xG06q/ovCx/AmfVHgeEDZxRvmB/7JDEXGtExWq554TlwB4rF
         dt76gTBxJb+wVhTmKRt2a7S6LSpH3ZA/PpDYvuaZoa6SDeurB+EbC9FGZFSmYaR0FpW7
         F7LqMHsWG0bkVkW/Dj05qCuYqWq9NQU4pnUDt6X7D3wDbwWUhaRD+dkWENPD116kWLNr
         MmJXLZnAjFCJIH3g/2HxlA2GPY5wjWkknQ8PfUpdVJQ/QH5dRd41BLnOOuNTEHv4w+D7
         LXiVeWIb6FE1UTfJ+Umlcu/tglHLzGxTyDvGs6riw1fMC5Gh4zLdN0R/MtOZoRuxUPQ3
         Xg1g==
X-Gm-Message-State: AC+VfDwXRvDfySPPOi6XBGxLyI3cuDsD+uZN2mafZzLJVqcc5+pVFmTb
        fe6dkByDnTMb7zgV2K6XlJ+C2Q==
X-Google-Smtp-Source: ACHHUZ4a+7/6S+KwcMX6eDYPTBlFQ+4k9K0mqeAmugHESM4BCX5ZT18ky3mzRqeYaSY3kjrMe/qckg==
X-Received: by 2002:a19:6d1c:0:b0:4f6:424c:4fa8 with SMTP id i28-20020a196d1c000000b004f6424c4fa8mr5216464lfc.17.1686661265065;
        Tue, 13 Jun 2023 06:01:05 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id u24-20020ac243d8000000b004f14ae5ded8sm1793786lfl.28.2023.06.13.06.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 06:01:04 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/8] dt-bindings: rtc: isl12022: add bindings for battery alarm trip levels
Date:   Tue, 13 Jun 2023 15:00:05 +0200
Message-Id: <20230613130011.305589-4-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230613130011.305589-1-linux@rasmusvillemoes.dk>
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230613130011.305589-1-linux@rasmusvillemoes.dk>
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

The isl12022 has a built-in support for monitoring the voltage of the
backup battery, and setting bits in the status register when that
voltage drops below two predetermined levels (usually 85% and 75% of
the nominal voltage). However, since it can operate at wide range of
battery voltages (2.5V - 5.5V), one must configure those trip levels
according to which battery is used on a given board.

Add bindings for defining these two trip levels. While the register
and bit names suggest that they should correspond to 85% and 75% of
the nominal battery voltage, the data sheet also says

  There are total of 7 levels that could be selected for the first
  alarm. Any of the of levels could be selected as the first alarm
  with no reference as to nominal Battery voltage level.

Hence this provides the hardware designer the ability to choose values
based on the discharge characteristics of the battery chosen for the
given product, rather than just having one battery-microvolt property
and having the driver choose levels close to 0.85/0.75 times that.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 .../devicetree/bindings/rtc/intersil,isl12022.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
index 7c1e638d657a..d5d3a687a34d 100644
--- a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
+++ b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
@@ -22,6 +22,18 @@ properties:
   interrupts:
     maxItems: 1
 
+  isil,trip-level85-microvolt:
+    description: |
+      The battery voltage at which the first alarm should trigger
+      (normally ~85% of nominal V_BAT).
+    enum: [2125000, 2295000, 2550000, 2805000, 3060000, 4250000, 4675000]
+
+  isil,trip-level75-microvolt:
+    description: |
+      The battery voltage at which the second alarm should trigger
+      (normally ~75% of nominal V_BAT).
+    enum: [1875000, 2025000, 2250000, 2475000, 2700000, 3750000, 4125000]
+
 required:
   - compatible
   - reg
@@ -39,6 +51,8 @@ examples:
             compatible = "isil,isl12022";
             reg = <0x6f>;
             interrupts-extended = <&gpio1 5 IRQ_TYPE_LEVEL_LOW>;
+            isil,trip-level85-microvolt = <2550000>;
+            isil,trip-level75-microvolt = <2250000>;
         };
     };
 
-- 
2.37.2

