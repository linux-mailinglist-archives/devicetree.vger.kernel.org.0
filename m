Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3722371F02D
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 19:03:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232224AbjFARDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 13:03:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232214AbjFARDw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 13:03:52 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF46CD1
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 10:03:50 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-970056276acso151701066b.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 10:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1685639029; x=1688231029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UONz0K3nwm2zifFBUhCTgrepWK1oSDUw2LPUignW7i8=;
        b=UnYYUWSClBb0BsXFi3i7XAaGAFEzebmE7vqQAMf3PJ8WPIcuaZOHiSHB4JLYadsI56
         KHjENvXyzXiGTZ8X2bUEIk9Hm+14AsxYTKsb0vOCfREuWnqw8cFzb98VTRnaZSv9Jmkh
         IMZz5GcmGNMrLNsbBUBQRucQhVPF0n+MOjoNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685639029; x=1688231029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UONz0K3nwm2zifFBUhCTgrepWK1oSDUw2LPUignW7i8=;
        b=NUzmsSy4SSbsiu9D73ax8vJRKmID8AmzPk/DFApUfz1yfD+melPd2PccusoF76sbUY
         RnBvId3mxIKTEt1DksCD/NLIZDn+fzjKrWVc6WwsCGc8W2shYoMqq/bxzGgKxojtvm2q
         v0+C45i66oQkD76K6H/kruBCUu+P+GYa49wuG7VH/HKzcqIZ+qd/whQ5zGhmWxG9zjNf
         aUOSlWz3pWWzj+urYuggCJiCe5nIO6qVMys1Fx9HLx7oPpURFnmHM9mKn/yyM9tV55V8
         B8uFu10LVchmZVEBy4P+vqtlQP0T3CKZWLIzVZq1OGkjns08CTvs3LZB+o5Vkrw2PPTz
         QS+Q==
X-Gm-Message-State: AC+VfDyHE53Yyn4BYZROkN4IO+civatERvaJE9sQMPpiYg13RZaNr4me
        yH6u4tZtjTUZaK1QhX0ws48dhw==
X-Google-Smtp-Source: ACHHUZ6q1AhVcxAlVz48b3Tk70s/OoY6OFc2SmdEUmp6hlYZs/bMvPFWf/VyyMQIDAXjCuBoS1i1rQ==
X-Received: by 2002:a17:907:9495:b0:94e:43ce:95f6 with SMTP id dm21-20020a170907949500b0094e43ce95f6mr7856974ejc.47.1685639029478;
        Thu, 01 Jun 2023 10:03:49 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-248-31-20.retail.telecomitalia.it. [95.248.31.20])
        by smtp.gmail.com with ESMTPSA id bh25-20020a170906a0d900b0096165b2703asm10658522ejb.110.2023.06.01.10.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jun 2023 10:03:48 -0700 (PDT)
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
Subject: [PATCH 3/6] ARM: dts: stm32: support display on stm32f746-disco board
Date:   Thu,  1 Jun 2023 19:03:17 +0200
Message-Id: <20230601170320.2845218-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230601170320.2845218-1-dario.binacchi@amarulasolutions.com>
References: <20230601170320.2845218-1-dario.binacchi@amarulasolutions.com>
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

Add support to Rocktech RK043FN48H display on stm32f746-disco board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

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

