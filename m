Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3AB35F5C77
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 00:12:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbiJEWMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 18:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbiJEWMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 18:12:49 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C80383076
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 15:12:48 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id bq9so27827396wrb.4
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 15:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=sQtmC5CT1BYx1wr4cDsdhyqbJnf1PNOi9nZ8obHDjYY=;
        b=i9T+BWoyfOh4YwlSNxED/MNU5eEtRg/wQxRHg6AMMJnEhJpCZJxJIsMHYeysa/gZt0
         zd5i4SC9fwfWTZPwWF7UtL1y0Ou8XdBQ5fZ4CPn4naErwOryPTtgjDSdzepvRfDRnB5l
         fB+28iqqQbaJEwSY/16k32aztbDoiP7W9FZ9m521A98TXEylSZxaJrOC1NLyamxRRVo6
         yJCVeDEn8Wi/jpBcKDcFDFsuBWGhTF95c5xvfDpc7biLpfGHGqVI0vzjjDa7f7yt1z6Y
         vnjOUQi6LU5ejqMHeabB9wGgjjJuQjNCT/i7HdUOkDC09zmw0rYsdytRzgiKbZWNKABJ
         IEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=sQtmC5CT1BYx1wr4cDsdhyqbJnf1PNOi9nZ8obHDjYY=;
        b=A9aKxI8QOcGiz/7yMdWjktIk1ZXT8wI3jY3puiFDn488hJWgiCBUYvPDmIy4Mgep/8
         foyP87vtqfaPvELZwtA7uK40sEGfqEqDwpry1gTXr7J6PC+17HHb+4aYnyHqIo92mUg8
         tV2gQYd8yMnlvcK7aUnhIazPxwCqc3EJAXSyIIQxSXaJv9YW13bNxuCyQanNDz9BOfVI
         C3Y2A1aJp3XKrvE4wJ11Xvwe7QHYDr3QFGPaIn9HWqpqmgdkIFWsfPK0FdM05tRZGgZv
         QGs1Uqpl22JfWqc8IBk6QVI5xtjheak/4MW2CO4K2NqXDbLpA0/UkMr9eZcUXMu+kLGw
         vxVw==
X-Gm-Message-State: ACrzQf3/zdUyeIPRBsTWvsSmV8xUjfGklaW1+qKv9UjDHRPh6iu4n/+w
        CDvu8EbxrtoW0oXtHRfnjzF4qA==
X-Google-Smtp-Source: AMsMyM7l8QwhdPPGYpixZnOKyo8MYpftQTDDNl1qzPKEnGbteRMvBT2RuKcjazpjxYJ2mUmgntHJ7Q==
X-Received: by 2002:a5d:5983:0:b0:22c:b9a0:e874 with SMTP id n3-20020a5d5983000000b0022cb9a0e874mr1075363wri.306.1665007966655;
        Wed, 05 Oct 2022 15:12:46 -0700 (PDT)
Received: from rainbowdash.. (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id d2-20020adffd82000000b0022e327f849fsm12184437wrr.5.2022.10.05.15.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 15:12:46 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        jarkko.nikula@linux.intel.com,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>
Subject: [PATCH v5 01/10] dt-bindings: pwm: Document Synopsys DesignWare snps,pwm-dw-apb-timers-pwm2
Date:   Wed,  5 Oct 2022 23:12:33 +0100
Message-Id: <20221005221242.470734-2-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221005221242.470734-1-ben.dooks@sifive.com>
References: <20221005221242.470734-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the bindings for Synopsys' DesignWare PWM block
as we will be adding DT/platform support to the Linux driver soon.

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
v5:
 - fixed order of properties
 - corrected clock to two items
v4:
 - fixed typos, added reg
v3:
 - add description and example
 - merge the snps,pwm-number into this patch
 - rename snps,pwm to snps,dw-apb-timers-pwm2
v2:
 - fix #pwm-cells to be 3
 - fix indentation and ordering issues
---
 .../bindings/pwm/snps,dw-apb-timers-pwm2.yaml | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml

diff --git a/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml b/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
new file mode 100644
index 000000000000..9aabdb373afa
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2022 SiFive, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/snps,dw-apb-timers-pwm2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DW-APB timers PWM controller
+
+maintainers:
+  - Ben Dooks <ben.dooks@sifive.com>
+
+description:
+  This describes the DesignWare APB timers module when used in the PWM
+  mode. The IP core can be generated with various options which can
+  control the functionality, the number of PWMs available and other
+  internal controls the designer requires.
+
+  The IP block has a version register so this can be used for detection
+  instead of having to encode the IP version number in the device tree
+  comaptible.
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    const: snps,dw-apb-timers-pwm2
+
+  reg:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 3
+
+  clocks:
+    items:
+      - description: Interface bus clock
+      - description: PWM reference clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: timer
+
+  snps,pwm-number:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: The number of PWM channels configured for this instance
+    enum: [1, 2, 3, 4, 5, 6, 7, 8]
+
+required:
+  - compatible
+  - reg
+  - "#pwm-cells"
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    pwm: pwm@180000 {
+      compatible = "snps,dw-apb-timers-pwm2";
+      reg = <0x180000 0x200>;
+      #pwm-cells = <3>;
+      clocks = <&bus>, <&timer>;
+      clock-names = "bus", "timer";
+    };
-- 
2.35.1

