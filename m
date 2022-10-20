Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15B69605A07
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 10:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbiJTIjS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 04:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230248AbiJTIjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 04:39:04 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 846CEA222C
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 01:39:03 -0700 (PDT)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A0594420DF
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 08:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1666255141;
        bh=1Kfa+smO/072OiY7RMhUCYjDWimk98jjl4qxZmAFPfQ=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=QAOv96tICxGMTB4KAkn9vknFau3STq0A4oujYgs+MPk0inMbeezCtDG7LAo9UCfdB
         UtBTTYj4eWEtHk6dFBpwirzCLkAJVz4hOZt9TtALilzU32/Xq2fWfkA3rmbvbWrmQR
         Z/2Mt6eaUMTfB6Xb5BX4++KeQFhdCVpXG4XyZ+0bq6jTkeuQlcsoiaL5IhkNaDS276
         qxx//3dHOVs7hLdn7RQTqWywZOea8uHt1kSPSsROXnnZWYkHEJNV3KxXHrHhj12Efj
         rv8Uqd5QYkGhc9AyNGj5kbHfbZKjQPzhXTIn/FlCwlJ7w0lVeyT2WszvxTUfNj8H5d
         PQxhu/aXnjSOA==
Received: by mail-qk1-f198.google.com with SMTP id bj1-20020a05620a190100b006eececec791so14624558qkb.15
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 01:39:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Kfa+smO/072OiY7RMhUCYjDWimk98jjl4qxZmAFPfQ=;
        b=hCm9x8Gq5xS6zHP2w1+bcLfpK4dFtZHgmACFEC2++rzdWk/PV7ucaTiKmSKF+fbXXx
         IY1FAwzHDEylGc75bbc7gGWEzs1vwibIrzQRykCO8gzsGQ/XJtsJZZM7wV68yvOv/9qv
         FpV8mvjWR0CjSNWhI4Mmm5H3STasArPgsrNXriHm+8tlyJbHEC8Z2CBNDr3nAgSbD8W6
         Nxh+PU4GMx74TYD0iv/Bnm1NHhd/JHz4gjzevImntct+5T0sKeBtHvA5vqqC76SX3VqF
         psg2/INorwptVTbkqZdTFcdw1bQUV0g48UgE7rCHTVqzqWFWOo9TMK7Ae/g1vVw8lKpy
         dxLw==
X-Gm-Message-State: ACrzQf2up1WTP2W6RtKCpB0GsbeEJPwVtiXihdnb3UfkE76DhVUcWAls
        7OjN/Ruc7RA6WzJpyFY/vk3XzM/68iQsRMivas7RzzmXUWUPY1uRsLVxlNDW1KtpOUv7CFb3ScQ
        CA7UeN6Ifd4eCiKT21Dx05AWCJQxqgdjC4VZ997E=
X-Received: by 2002:a05:622a:14d4:b0:39c:fe54:1cc6 with SMTP id u20-20020a05622a14d400b0039cfe541cc6mr5290236qtx.88.1666255139200;
        Thu, 20 Oct 2022 01:38:59 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5yISX1K+NROiNXKggPZO0oyltRGu4SNeg/ZNORfA01oA/O6xEKKposra24ZeKHoPZE0T7Caw==
X-Received: by 2002:a05:622a:14d4:b0:39c:fe54:1cc6 with SMTP id u20-20020a05622a14d400b0039cfe541cc6mr5290217qtx.88.1666255138842;
        Thu, 20 Oct 2022 01:38:58 -0700 (PDT)
Received: from stitch.. (80.71.140.73.ipv4.parknet.dk. [80.71.140.73])
        by smtp.gmail.com with ESMTPSA id h14-20020ac8568e000000b0039913d588fbsm5733905qta.48.2022.10.20.01.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 01:38:58 -0700 (PDT)
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
To:     Conor Dooley <conor.dooley@microchip.com>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1] riscv: dts: icicle: Add GPIO controlled LEDs
Date:   Thu, 20 Oct 2022 10:38:54 +0200
Message-Id: <20221020083854.1127643-1-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the 4 GPIO controlled LEDs to the Microchip PolarFire-SoC
Icicle Kit device tree. The schematic doesn't specify any special
function for the LEDs, so they're added here without any default
triggers and named led1, led2, led3 and led4 just like in the schematic.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/microchip/mpfs-icicle-kit.dts    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
index ec7b7c2a3ce2..11ba4417f11a 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
@@ -5,6 +5,8 @@
 
 #include "mpfs.dtsi"
 #include "mpfs-icicle-kit-fabric.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 
 /* Clock frequency (in Hz) of the rtcclk */
 #define RTCCLK_FREQ		1000000
@@ -31,6 +33,34 @@ cpus {
 		timebase-frequency = <RTCCLK_FREQ>;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		led-1 {
+			gpios = <&gpio2 16 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_RED>;
+			label = "led1";
+		};
+
+		led-2 {
+			gpios = <&gpio2 17 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_RED>;
+			label = "led2";
+		};
+
+		led-3 {
+			gpios = <&gpio2 18 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_AMBER>;
+			label = "led3";
+		};
+
+		led-4 {
+			gpios = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_AMBER>;
+			label = "led4";
+		};
+	};
+
 	ddrc_cache_lo: memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x0 0x40000000>;
-- 
2.37.2

