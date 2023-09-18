Return-Path: <devicetree+bounces-1153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D247A510B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2817281857
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6548266D1;
	Mon, 18 Sep 2023 17:33:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020E9262A2
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 17:33:06 +0000 (UTC)
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69414DB
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:05 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6c0f3f24c27so2876671a34.2
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058384; x=1695663184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XK3Zx4cA9xhlrAxpKhxgK0rFJrxd0HOs9F/T85uolkQ=;
        b=KT8n7d303w9fwG+WaJ4RkKOuhyfriT6UjDsBKQkKWEVKYEFzu4yCiL5aWD3lV/zHbq
         JNN1efBc74D22UbeiE6wLg6kFgG3rIdgCLd5GEBTh0nLiveHsWjAEUVyiBFgfjCbqLJ6
         Eq2YDrjyYKYhASRMAlA2jucY3/O6t9OZowHc+jmj/JUGVBkGLk27euHy591WGKslRZw8
         EuwZI7syIuJ2UI4thSojnT7goLZR01xxVS5C2+gBmIoLQMbzdg4zcvl44R1LiANw8mc0
         xakN8N9rUCMFWlKNJbirDQJJNGMQytNs2s6RVN8w8vzqA4wRXzk9be+0IZ7qxZQ2WYjg
         4huA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058384; x=1695663184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XK3Zx4cA9xhlrAxpKhxgK0rFJrxd0HOs9F/T85uolkQ=;
        b=Yr01rebxz8BT3kLAZNuAM2aFkkgDcGS0sY8jmw496bvTei7hvnCAfQRz+8SpvoJNTT
         etr3PWCr1a4QrQ+K698fscYhwbxNNdxj/yot4jX77OUeVLHcpMdfK7nsF8SZABWNspix
         VBz8llyHdW1eXhcR4twkzsjo2B0CbdHT3xKd/4aQygBB/9P8rOdcfnBDgbOzpARMQIfk
         MgIKS3zdqsgiTYkWF/sRzgWNTZctHREcnxYXzCpJj0YfwMvxLFWsJY+4nyn7+zISTLl1
         h3ReiXpdYEamcmXDRMp/CrS+lLPTqh/Snx6cxILQOiyE0KkNYVXxXvrK+BEgCMGaKCV2
         IG3g==
X-Gm-Message-State: AOJu0Yzh2wMi/AMlhHd1QYlNi9M5aDk15tEgZArioOBKH+l3iDEN00DP
	7FZSsJ9KDW1tOc95eAhG8FlZiOiiOFs=
X-Google-Smtp-Source: AGHT+IG099pZXcuRlYWQ4u4WN0bBrYtPwrlrp3XmF1JITM2fdMwNCInhOudAchYGgcQDm9Og8WM1Qg==
X-Received: by 2002:a9d:4f0b:0:b0:6be:c1b:ded4 with SMTP id d11-20020a9d4f0b000000b006be0c1bded4mr10608390otl.3.1695058384590;
        Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: Add saradc node to Indiedroid Nova
Date: Mon, 18 Sep 2023 12:32:55 -0500
Message-Id: <20230918173255.1325-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918173255.1325-1-macroalpha82@gmail.com>
References: <20230918173255.1325-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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
index 1e2336d3065b..60f00ceb630e 100644
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
 
+	adc-keys-0 {
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
+	adc-keys-1 {
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


