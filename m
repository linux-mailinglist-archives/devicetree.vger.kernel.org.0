Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E9A07315F2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 12:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343849AbjFOK7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 06:59:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343819AbjFOK6z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 06:58:55 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54C422962
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:51 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f762b3227dso825907e87.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686826729; x=1689418729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aIDXI/11BslSskl54h414rVvg2lyuYHt6cU/p8nUA9g=;
        b=c+yjgpGdQDmhjuZnQbwyxD0bDl3q0M4kNfPSdir/p7LY1WGleDG12sNdYUO7Rb5WlH
         03N73vRJzClXVVrzkZo0u1dim3YMGTaAQPixcPL6a0FxZCV9VUpHlth3LUTwwf7q7W37
         /iBl5UwPSg2+YwoOnEP/twQHno662NOBmN2fQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686826729; x=1689418729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aIDXI/11BslSskl54h414rVvg2lyuYHt6cU/p8nUA9g=;
        b=E82RBhASiIwSxS0voydEovZhzFVir1PnvN7sHnCdLnvBqpOydoXf2x6Xj7Xysc1AvM
         ZDdphyl88xTCbyE8HUaRDbLfcojK2RMoX0zJapUDrp1YNPIXd7uQ+bLM8GYx7/86H8EE
         8AIQpFtZbjeAQxCSakn1MZjc7ATA5IdRHEye+0wX5BnkAmwlkMFrROdj+EyxYZxfGHg8
         pXA7c7uil4+f9P99mprGNDVVehxwwRG4Hdh2DSgsEyFzRxxCLfY7hcsbAPyJisJ1dImI
         H695ySCXGPAl6kC+GJwTWaTA2XUk6FOt0XjvvfMzqER9YPVIxSZt6HbtYq0lMKaYdESK
         4PhA==
X-Gm-Message-State: AC+VfDy7IvaMnSNfOYNnRDMBX4bj3PtmndcsBCvxt/12+VkxjxTiksJv
        yS40zo+R/DwPw+LsBfd91X9TLg==
X-Google-Smtp-Source: ACHHUZ7f9+BJ+Uy13A8hOyIDEh2/w/DuN5eK4X5Jue10bhs+MZzLvyEWhKBWBwM8XgHJSKNwg3wfVQ==
X-Received: by 2002:a05:6512:398a:b0:4f4:e509:ef56 with SMTP id j10-20020a056512398a00b004f4e509ef56mr1374697lfu.25.1686826729727;
        Thu, 15 Jun 2023 03:58:49 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id h7-20020ac25967000000b004f13f4ec267sm165364lfp.186.2023.06.15.03.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 03:58:49 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 7/8] dt-bindings: rtc: isl12022: add #clock-cells property
Date:   Thu, 15 Jun 2023 12:58:25 +0200
Message-Id: <20230615105826.411953-8-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230615105826.411953-1-linux@rasmusvillemoes.dk>
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230615105826.411953-1-linux@rasmusvillemoes.dk>
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

The isl12022 has a dual-purpose irq/f_out pin, which can either be
used as an interrupt or clock output.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 .../devicetree/bindings/rtc/intersil,isl12022.yaml     | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
index 3c6c07aaa78f..c2d1441ef273 100644
--- a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
+++ b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
@@ -19,6 +19,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  '#clock-cells':
+    const: 0
+
   isil,battery-trip-levels-microvolt:
     description:
       The battery voltages at which the first alarm and second alarm
@@ -33,6 +36,13 @@ required:
 
 allOf:
   - $ref: rtc.yaml#
+  # If #clock-cells is present, interrupts must not be present
+  - if:
+      required:
+        - '#clock-cells'
+    then:
+      properties:
+        interrupts: false
 
 unevaluatedProperties: false
 
-- 
2.37.2

