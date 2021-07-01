Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 793993B8B29
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 02:22:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238149AbhGAAYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 20:24:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238143AbhGAAYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 20:24:54 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C8ACC0617A8
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 17:22:24 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id g21so4271665pfc.11
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 17:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HSdm070R4SM/eRkEfUHVyZ+M0Thpoj9fAA1Eqy/QCP4=;
        b=iDwJzjkg/Cb6xXcKJDcqkbedHRnU0N//h3MMRTg1+KnfRnJ9qoHHXuILtF5nlFNPto
         iGbKzvpVlyvCYQIRO74L9lyd8SjvhqGEx/t74r5T+zwGx1ahklXn/88A2YoeJpqyyQF3
         S++9jMJ/COOuShtlkkwQ3eJWPXVj8O4lYr53RtUIMFUBgPNHJnxHtQ3piI/m5Y6pp0Hj
         MrXHcnFcFRQbIUeX9jP8zLrY3jx3xXSVvqn8Jwudz/vVTOWDJ3ss3woHtWwfUDpyEi9v
         h0/SlzMlAMIfHY0xOxhvwFfFknUwaRARZ4jZQL2bFiHWmpyNvPw5YdkOuoivOpgvC/oA
         8tLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HSdm070R4SM/eRkEfUHVyZ+M0Thpoj9fAA1Eqy/QCP4=;
        b=V6eTdPZq6p8E2/E+BJP+DCxDjfAv2uGtLMQ+ukTBP1noB5f+tUZRx88VWDRrMVB85+
         T+xFUebbp7WVCcMigIBaW2QnWDhO1FTnxFfsGaJ1E5gYhxFnjxMLdGDc0pD5rFnBGYef
         Cd211wFsnufq1ipHrr3k+1AJVoWGwcfbFAy21He3teb5c1XkZvvdrBNFfhSv4ehTy6+u
         f/c+FX8nYTd7o78vnY+mEy9hq4o0t+hk8WqWUI+bs11Q9pHLC3iMoPDvjS1uaROkG1my
         95TmSTJEa18nY79xi7464XtGVBZccFIX3m2ldEeuLX+HD2X2aw95xXfj2UBctjOCL+hY
         lxOg==
X-Gm-Message-State: AOAM530CfO7mgAwGwk2MXLG0WTKhuO7H7HHnCRhqTtGIIEe5PpXRTShP
        jZPA22UH/T/tTeFs6BSRTwzOTw==
X-Google-Smtp-Source: ABdhPJwSc0jIQ5LQ/MzvbgRgWdx1LngPkR32e6yXQdiDE/tHcpJn4TAdr2Bfkm/OdpsyZEgOtzaDJg==
X-Received: by 2002:a62:380c:0:b029:2f7:4057:c3ed with SMTP id f12-20020a62380c0000b02902f74057c3edmr38802381pfa.21.1625098943069;
        Wed, 30 Jun 2021 17:22:23 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c0:4701:ae70:8687:fcbc:6b3d:c844])
        by smtp.gmail.com with ESMTPSA id v6sm25117495pgk.33.2021.06.30.17.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 17:22:22 -0700 (PDT)
From:   Drew Fustini <drew@beagleboard.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Michael Zhu <michael.zhu@starfivetech.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Fu Wei <tekkamanninja@gmail.com>, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     Drew Fustini <drew@beagleboard.org>,
        Huan Feng <huan.feng@starfivetech.com>
Subject: [RFC PATH 1/2] dt-bindings: gpio: add starfive,jh7100-gpio bindings
Date:   Wed, 30 Jun 2021 17:20:38 -0700
Message-Id: <20210701002037.912625-2-drew@beagleboard.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210701002037.912625-1-drew@beagleboard.org>
References: <20210701002037.912625-1-drew@beagleboard.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the GPIO controller in the StarFive JH7100 SoC [1].

[1] https://github.com/starfive-tech/beaglev_doc

Signed-off-by: Drew Fustini <drew@beagleboard.org>
Signed-off-by: Huan Feng <huan.feng@starfivetech.com>
---
 .../bindings/gpio/starfive,jh7100-gpio.yaml   | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/starfive,jh7100-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/starfive,jh7100-gpio.yaml b/Documentation/devicetree/bindings/gpio/starfive,jh7100-gpio.yaml
new file mode 100644
index 000000000000..8c9d14d9ac3b
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/starfive,jh7100-gpio.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/starfive,jh7100-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive JH7100 GPIO controller
+
+maintainers:
+  - Huan Feng <huan.feng@starfivetech.com>
+  - Drew Fustini <drew@beagleboard.org>
+
+properties:
+  compatible:
+    items:
+      - const: starfive,jh7100-gpio
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description:
+      Interrupt mapping, one per GPIO. Maximum 32 GPIOs.
+    minItems: 1
+    maxItems: 32
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - "#interrupt-cells"
+  - "#gpio-cells"
+  - gpio-controller
+
+additionalProperties: false
+
+examples:
+  - |
+      gpio@11910000 {
+        compatible = "starfive,jh7100-gpio";
+        reg = <0x11910000 0x10000>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        interrupts = <32>;
+      };
+
+...
-- 
2.27.0

