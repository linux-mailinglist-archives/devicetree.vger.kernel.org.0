Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6475348B86E
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 21:19:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350743AbiAKUTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 15:19:07 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:60248
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1346521AbiAKUSb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 15:18:31 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3672740A8C
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 20:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641932308;
        bh=B7eb4svBYjse6OhWKfcBGRECU3OCvQCpw+6zWu1iivQ=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=R0fqVszwwy+IHa6Aw38d3fp9kbRiDITBA4BylQk1J9bQ8CgFPrtwqouEo8rW8SVcQ
         X/qan6y2TAgPgOoax+3cPPnUD+i50DKaDlComsoV7U0zz0DlgA1/KjI8yp8IjyBk+Z
         S/TLL++G1ZvuQEUroHUcbnQVK+F1rTcZvkTshvcnDgxhzR5+aUQZP5eyIjE2QAT3+C
         g9Bs2p2YpTdcbMvPjUSps4wNVVrhjyGnqVnk0WUbZVrx0QXyRdUMrWgZ5wL2WmGgWj
         Pwhl4LCedxtPtxxZBZXxYnTJSDayLcaBSWVrbwVGTBud7ccRacV4WCOaAK1PsKJoD9
         01YUIr2+nJLHQ==
Received: by mail-ed1-f72.google.com with SMTP id j10-20020a05640211ca00b003ff0e234fdfso250368edw.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 12:18:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B7eb4svBYjse6OhWKfcBGRECU3OCvQCpw+6zWu1iivQ=;
        b=vLpK1fOT+9MX1PGpbPIZyOkQnXxfSynd1lVLGU87o3T/ZkuYIrldNt+dtglTkpFQCi
         6MXLVLEfzO5/1mZVCNxozOdNUE+NB/j4PpOViFG3VDUDG2e49VDmKU/PcokW1ZYJy6Xv
         rMOieApKOaIe7Qv3eNF90JyLzPvd3zoVCKp0Dx+CnzswOyvjo13i8ZaYa7sR3qhGlgdQ
         PJD9qbXat07Q6jb25seeoj0bOtA9Ew2WxMUk0vUtRyElpVfEqeDkqw/U8QciXtLUF6tM
         0qOSKo67EIosY1U58f/5nZcMdo1YLyMTXPiNCBKebo/yPI1BlDeDQWLyhvy9shwXWGbL
         YHVA==
X-Gm-Message-State: AOAM531/nzd9mf1+kcQJ9hxUiwmiO/uCSU5kiMajfVAVByROUWZ1/krl
        KzkbrpIeF4d/V7dFNWJIxz2SZyoVT/ev2G0f9qqvho/9CjggTmIIs4eMhjvXtMZh8PBXZkOeQ3C
        zqNMLvkH9Yk4+uVYbBSMcqCTdEsXhY0F5/ENhhkI=
X-Received: by 2002:a17:906:9743:: with SMTP id o3mr4917472ejy.162.1641932307872;
        Tue, 11 Jan 2022 12:18:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyDLMQAtYvvGFLQbylU0wX+h2/hT+LQs+a2r74G9q823h9VzJ2eJOEH3H9exRQ9Re9sKec2MA==
X-Received: by 2002:a17:906:9743:: with SMTP id o3mr4917457ejy.162.1641932307713;
        Tue, 11 Jan 2022 12:18:27 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e4sm4030881ejs.13.2022.01.11.12.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:18:26 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@gmail.com>
Subject: [PATCH v2 25/28] dt-bindings: pinctrl: samsung: describe Exynos850 and ExynosAutov9 wake-ups
Date:   Tue, 11 Jan 2022 21:17:19 +0100
Message-Id: <20220111201722.327219-19-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Older Samsung Exynos SoC pin controller nodes (Exynos3250, Exynos4,
Exynos5, Exynos5433) with external wake-up interrupts, expected to have
one interrupt for multiplexing these wake-up interrupts.  Also they
expected to have exactly one pin controller capable of external wake-up
interrupts.

It seems however that newer ARMv8 Exynos SoC like Exynos850 and
ExynosAutov9 have differences of their pin controller node capable of
external wake-up interrupts:
1. No multiplexed external wake-up interrupt, only direct,
2. More than one pin controller capable of external wake-up interrupts.

Add dedicated Exynos850 and ExynosAutov9 compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../samsung,pinctrl-wakeup-interrupt.yaml     | 27 ++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 6b684a53119b..a822f70f5702 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -16,9 +16,12 @@ description: |
   controller.
 
   External wake-up interrupts for Samsung S3C/S5P/Exynos SoC pin controller.
-  Only one pin-controller device node can include external wake-up interrupts
-  child node (in other words, only one External wake-up interrupts
+  For S3C24xx, S3C64xx, S5PV210 and Exynos4210 compatible wake-up interrupt
+  controllers, only one pin-controller device node can include external wake-up
+  interrupts child node (in other words, only one External wake-up interrupts
   pin-controller is supported).
+  For newer controllers, multiple pin-controller device node can include
+  external wake-up interrupts child node.
 
   See also Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml for
   additional information and example.
@@ -32,6 +35,8 @@ properties:
       - samsung,s5pv210-wakeup-eint
       - samsung,exynos4210-wakeup-eint
       - samsung,exynos7-wakeup-eint
+      - samsung,exynos850-wakeup-eint
+      - samsung,exynosautov9-wakeup-eint
 
   interrupts:
     description:
@@ -41,7 +46,6 @@ properties:
 
 required:
   - compatible
-  - interrupts
 
 allOf:
   - if:
@@ -56,6 +60,8 @@ allOf:
         interrupts:
           minItems: 6
           maxItems: 6
+      required:
+        - interrupts
 
   - if:
       properties:
@@ -67,6 +73,8 @@ allOf:
         interrupts:
           minItems: 4
           maxItems: 4
+      required:
+        - interrupts
 
   - if:
       properties:
@@ -81,5 +89,18 @@ allOf:
         interrupts:
           minItems: 1
           maxItems: 1
+      required:
+        - interrupts
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos850-wakeup-eint
+              - samsung,exynosautov9-wakeup-eint
+    then:
+      properties:
+        interrupts: false
 
 additionalProperties: false
-- 
2.32.0

