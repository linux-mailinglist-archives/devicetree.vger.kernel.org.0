Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8802798AC6
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 18:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244579AbjIHQmL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 12:42:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243809AbjIHQmK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 12:42:10 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC8D01FD5
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 09:42:06 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6bf01bcb1aeso1684196a34.3
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 09:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191326; x=1694796126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O6IXreXlyeceU3AH7Yf5LWKhoPgVW8gHUfj1oR637g0=;
        b=KFTlSnFCbalJKfv4qfTxzeHv6O7rj79ZxZzU6ZcH/kf0vx1V/qkH8WAzTbrbMcAdOF
         z3PF5XZqPpJPVm0TA00Qwy1hDHxktjUgP9jwpfqEX0bRpLeHvkTaKbeB5oZkfrdgLkr/
         pLfgBtv2QhKEFdPg7sndk4RIYDz14pETTgDnCI51egm5Fg4gE08vE7o4aPDsvbgtQHHU
         rKigKaSMB0FPgEicNz1B8QZoP8D8Rf9aosEm3C/QqFpIyutV3fADO8/TbuEsqfUna72e
         /7VEqJ9pKNHjSV4uY1/oBKmLR+4KLgF51GQ4LEquUpcyK9z3P8aYO5//0ZxZGMJLOgYR
         ft4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191326; x=1694796126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6IXreXlyeceU3AH7Yf5LWKhoPgVW8gHUfj1oR637g0=;
        b=di97oyNnCcOW8K7ZeL1uNxLSll5TiQLlSEFyBqZTL3kVW/GDMVZZN859qGd9fpxlQN
         A6PGS7wE24ADvycnxCaLItYFWqQzGdyPe/P/vKpb+wHkmLYLzmc+gc/Fh6mkUG6lWXzV
         KE35cTD7nMdHqBuO9FGZTSXUvUmmwjv+c6W56UJsM1Qib6Sw4QtbTFTz+duQlASNhFE7
         zOqU7tLAPV8seiCwy7tc2HJTBhxwxEVi1puO0EKIrsHaPoazQEckmPI78Ed5bWtBTXrC
         qs1MFryQreMS1TM1hFvcPXpdS4g0p5/NLF8qgsapc4xYs3fRQzvveIZNZAqXDTHtF3tn
         pi3Q==
X-Gm-Message-State: AOJu0Yw0SytvRcSKggEmlqtMmsvCbrHVdwP+iiQ0h1/HgEyJzit5uGW5
        zcF+1oSgGtHyHWxevvElu3OluQXuaS7zOQ==
X-Google-Smtp-Source: AGHT+IEyiJGlVUrfYNhf0bUCf9ra7RfpOB5794VOAFNK99G6Th7EXQq01Ve/4kXKoHw2cfGWmQ923g==
X-Received: by 2002:a9d:6a11:0:b0:6bc:88da:af44 with SMTP id g17-20020a9d6a11000000b006bc88daaf44mr3280303otn.6.1694191326042;
        Fri, 08 Sep 2023 09:42:06 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, jagan@edgeble.ai,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to rk3588s-indiedroid-nova
Date:   Fri,  8 Sep 2023 11:41:56 -0500
Message-Id: <20230908164156.2846-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908164156.2846-1-macroalpha82@gmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
found on the device. The buttons are documented as "boot" and
"recovery". The boot button is used by the bootloader to boot into USB
recovery mode. The recovery button use is currently unknown.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 1e2336d3065b..4c2d662d9c97 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
@@ -11,6 +12,34 @@ / {
 	model = "Indiedroid Nova";
 	compatible = "indiedroid,nova", "rockchip,rk3588s";
 
+	adc_keys0 {
+		compatible = "adc-keys";
+		io-channel-names = "buttons";
+		io-channels = <&saradc 0>;
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-boot {
+			label = "boot";
+			linux,code = <KEY_PROG1>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
+	adc_keys1 {
+		compatible = "adc-keys";
+		io-channel-names = "buttons";
+		io-channels = <&saradc 1>;
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "recovery";
+			linux,code = <KEY_PROG2>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
@@ -410,6 +439,11 @@ typec5v_pwren: typec5v-pwren {
 	};
 };
 
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
 /* HS400 modes seemed to cause io errors. */
 &sdhci {
 	bus-width = <8>;
-- 
2.34.1

