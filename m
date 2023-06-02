Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04D8971FEED
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 12:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233982AbjFBKVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 06:21:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235307AbjFBKVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 06:21:40 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D1E418C
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 03:21:39 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5147f5efeb5so2796460a12.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 03:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1685701297; x=1688293297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tlm5X0f1SJIUHEa+Ch7CRBAmlhS5LXsyaOP8GZ1/KKI=;
        b=dKNDTUc5GWxmNVpO0hSi+LT5wi86h1Qt4xjEcapRn/pCf5bEu4VvXaLEhGOqCbsemD
         1GxvShFnnr5s80Jb8Ddo65hgCGg55+zcmpE8fjFyl+fHXMqreR9SMD/mHRb1mC6jtvkC
         addZVekgyLsnZlOZQgZfaIJRXy8Pm2lpJjTCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685701297; x=1688293297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tlm5X0f1SJIUHEa+Ch7CRBAmlhS5LXsyaOP8GZ1/KKI=;
        b=fhfDB6L5datYwrhr1TlQEaFcnM4pLVtuu6xFomQXmc5PNtDrb4qm/bfk8buDbLpPkk
         8UJY6FWfgOO8JvGimFv2iADi0ulioEoUJXWjDB6tw6eU3vVqz/2DWd1vlPcf9vwiPdKD
         LB/smoSo3GUQtwSfJdtoiyasnbOz3Ab3c2zsRw6HaY29lJ1ejPvZgo7fO2D6B3GXBxB9
         CpQmR/Lcqhu7kb2xRMn7bXqf2pdXypn24lHbwHWqxrETPn8WbCL9cx6sMaYxR0PjjimU
         IthEAZZJmT7fKk8EZhxxquzg0UxeCUtcCjP8pC0NEWo896/ofhaZw5h+Lnazf1OY0Q4v
         qtJg==
X-Gm-Message-State: AC+VfDyst5MqniRAl/JbdE0RgCpM6hpwSTB+P6Jqi5dFezreMmtpRVDp
        wjQfU401MMAe2DJl1yh25ZIp5A==
X-Google-Smtp-Source: ACHHUZ6KUZCEHQmagmTjEK/HnGclXdX1cbLKZklW1ePFhWRcqd7vYKbYY6Cpp/PfHZR+wLKRik0eKA==
X-Received: by 2002:aa7:c997:0:b0:50b:c630:a956 with SMTP id c23-20020aa7c997000000b0050bc630a956mr1635028edt.17.1685701297624;
        Fri, 02 Jun 2023 03:21:37 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-248-31-20.retail.telecomitalia.it. [95.248.31.20])
        by smtp.gmail.com with ESMTPSA id x24-20020aa7d398000000b0051499320435sm528887edq.14.2023.06.02.03.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 03:21:37 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Amarula patchwork <linux-amarula@amarulasolutions.com>,
        michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 3/6] ARM: dts: stm32: support display on stm32f746-disco board
Date:   Fri,  2 Jun 2023 12:21:19 +0200
Message-Id: <20230602102123.3345587-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230602102123.3345587-1-dario.binacchi@amarulasolutions.com>
References: <20230602102123.3345587-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support to Rocktech RK043FN48H display on stm32f746-disco board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/stm32f746-disco.dts | 51 +++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f746-disco.dts b/arch/arm/boot/dts/stm32f746-disco.dts
index c11616ed5fc6..cda423b6a874 100644
--- a/arch/arm/boot/dts/stm32f746-disco.dts
+++ b/arch/arm/boot/dts/stm32f746-disco.dts
@@ -60,10 +60,41 @@ memory@c0000000 {
 		reg = <0xC0000000 0x800000>;
 	};
 
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		linux,cma {
+			compatible = "shared-dma-pool";
+			no-map;
+			size = <0x80000>;
+			linux,dma-default;
+		};
+	};
+
 	aliases {
 		serial0 = &usart1;
 	};
 
+	backlight: backlight {
+		compatible = "gpio-backlight";
+		gpios = <&gpiok 3 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+	};
+
+	panel_rgb: panel-rgb {
+		compatible = "rocktech,rk043fn48h";
+		backlight = <&backlight>;
+		enable-gpios = <&gpioi 12 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+		port {
+			panel_in_rgb: endpoint {
+				remote-endpoint = <&ltdc_out_rgb>;
+			};
+		};
+	};
+
 	usbotg_hs_phy: usb-phy {
 		#phy-cells = <0>;
 		compatible = "usb-nop-xceiv";
@@ -99,6 +130,26 @@ &i2c1 {
 	status = "okay";
 };
 
+&dma1 {
+	status = "okay";
+};
+
+&dma2 {
+	status = "okay";
+};
+
+&ltdc {
+	pinctrl-0 = <&ltdc_pins_a>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	port {
+		ltdc_out_rgb: endpoint {
+			remote-endpoint = <&panel_in_rgb>;
+		};
+	};
+};
+
 &sdio1 {
 	status = "okay";
 	vmmc-supply = <&mmc_vcard>;
-- 
2.32.0

