Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (unknown [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 165805FC41F
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 13:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbiJLLJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 07:09:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiJLLJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 07:09:38 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1CE10C
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 04:09:34 -0700 (PDT)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AB3C43F468
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 11:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1665572970;
        bh=fc0TPfCo+ClitIo96MsU8YKIJ7fVwtsiPqV5IcK9L04=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=MJPduzQCL+phho4TWDHGhXKe8m64a6Q40gpt1B1O9L9KizIx6Y1f7xISs+gz35Jel
         jGbm6m+xPZvcWV9DpCc7yc8rfXkOLV2xmLTvv72aFUzUY5lfjAqyj3fstLfEkAhLWx
         PSNRGAjbL/sTGi1qU4lq/NjaUBmuFTOidRTC+iedPEvkxfRryAAHgE3uk6lePAx8qO
         IgLHI4AvEGCjDCa+QXpulRHXeddjHgfU51umteyFygtJLeKc1STr1QBAyNl6oHVbTe
         SOsFI51+mpxYjourDn6EFq3roENXtNEoeDOCDwpWqKPnDVOAQSqZoPRPb69pNAl3M0
         +WGlZCHBstHTw==
Received: by mail-wr1-f70.google.com with SMTP id t12-20020adfa2cc000000b0022adcbb248bso4821926wra.1
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 04:09:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fc0TPfCo+ClitIo96MsU8YKIJ7fVwtsiPqV5IcK9L04=;
        b=R2EBbg8UmSkiJ7sXnaT0IQXIzZVpZAMb3u1IGZ17o2x/DhxNIdps75gloRupkJ1WlY
         pguTjLhBjuTgbnapQNOar/+nUOGJXfKfTh5q3rYjcn0siXQC+ulFvVxEEuA/tIaR/9KL
         avzH+uXuCpw/jD/6zmKKxlWu/bgF/nbSiQuyztu2C2KiLb/iyCJ1VchM1nzJVFGlSJeg
         70vgFERqIcnW++hwyGrDk7Yf7zAInkZUKM7z58aO76uC1FzCsl33rcyd+3MPmCwHezP4
         TvEWpeflgISoYmyivEbK1rvRysCEGsKANsKmAD6t0RS1Mox9cQoJnnQa8vrHWR84/vS2
         B9yQ==
X-Gm-Message-State: ACrzQf2GmrqeTX/VJKQoBnGVNlFYULeli+LCSk/rDV3cWQdiZ0ABHcx3
        Gku7EWcZ+qZNVt/CrnFDgYOSrmW9hA8Vzi5aG+r+ccpNsVke/qvoy2zRar8IHHsg2uo7uJZGcvH
        VridnVVDuLiAaBfjyIMKxztWnR16j4FJ3P1tXfWk=
X-Received: by 2002:a05:6000:2cd:b0:22e:5cef:4332 with SMTP id o13-20020a05600002cd00b0022e5cef4332mr17179908wry.540.1665572970224;
        Wed, 12 Oct 2022 04:09:30 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM53N08D5AYNC9olOgNeBcGL9x6hkBytfGMbsk1rdhYnQNCfZEJHiySv6wFWFyPBnmO6XE6fhg==
X-Received: by 2002:a05:6000:2cd:b0:22e:5cef:4332 with SMTP id o13-20020a05600002cd00b0022e5cef4332mr17179899wry.540.1665572970000;
        Wed, 12 Oct 2022 04:09:30 -0700 (PDT)
Received: from stitch.. (194.62.169.87.ipv4.parknet.dk. [194.62.169.87])
        by smtp.gmail.com with ESMTPSA id i188-20020a1c3bc5000000b003b492753826sm1580616wma.43.2022.10.12.04.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Oct 2022 04:09:29 -0700 (PDT)
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
To:     linux-riscv@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Alexandre Ghiti <alexandre.ghiti@canonical.com>,
        Bin Meng <bin.meng@windriver.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1] riscv: dts: sifive unleashed: Add PWM controlled LEDs
Date:   Wed, 12 Oct 2022 13:09:28 +0200
Message-Id: <20221012110928.352910-1-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the 4 PWM controlled green LEDs to the HiFive Unleashed device
tree. The schematic doesn't specify any special function for the LEDs,
so they're added here without any default triggers and named d1, d2, d3
and d4 just like in the schematic.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---

Yes this board is old, but I'm trying to get rid of custom riscv patches in
the Ubuntu kernel.

 .../boot/dts/sifive/hifive-unleashed-a00.dts  | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index ced0d4e47938..900a50526d77 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -3,6 +3,8 @@
 
 #include "fu540-c000.dtsi"
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pwm/pwm.h>
 
 /* Clock frequency (in Hz) of the PCB crystal for rtcclk */
 #define RTCCLK_FREQ		1000000
@@ -42,6 +44,42 @@ gpio-restart {
 		compatible = "gpio-restart";
 		gpios = <&gpio 10 GPIO_ACTIVE_LOW>;
 	};
+
+	led-controller {
+		compatible = "pwm-leds";
+
+		led-d1 {
+			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
+			active-low;
+			color = <LED_COLOR_ID_GREEN>;
+			max-brightness = <255>;
+			label = "d1";
+		};
+
+		led-d2 {
+			pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
+			active-low;
+			color = <LED_COLOR_ID_GREEN>;
+			max-brightness = <255>;
+			label = "d2";
+		};
+
+		led-d3 {
+			pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
+			active-low;
+			color = <LED_COLOR_ID_GREEN>;
+			max-brightness = <255>;
+			label = "d3";
+		};
+
+		led-d4 {
+			pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
+			active-low;
+			color = <LED_COLOR_ID_GREEN>;
+			max-brightness = <255>;
+			label = "d4";
+		};
+	};
 };
 
 &uart0 {
-- 
2.37.2

