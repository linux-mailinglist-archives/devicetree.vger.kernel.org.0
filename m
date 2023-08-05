Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE27770F15
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 11:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbjHEJcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 05:32:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjHEJcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 05:32:14 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FA65469C
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 02:32:13 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-99c0cb7285fso380981366b.0
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 02:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1691227932; x=1691832732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x4zfk9+w42D4Vl03+U/DigAoB0zXZh0Gh/1uuAJ0hLQ=;
        b=LTO+hY60zcfHdFcGBdqJvZs63Hhld+Y0TgVkhhqZbg4k0dXhHB9KvM+4praq0OLijR
         aHcpCyMoqg2wlt4KfQXQAeT53SyHlvHNASbJfq27+RFJnuLxTgAhKn+AErJ/jrFInur+
         nN3f9uKhwrM5tUfDI7gcam14wcokpAHO2Rl4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691227932; x=1691832732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x4zfk9+w42D4Vl03+U/DigAoB0zXZh0Gh/1uuAJ0hLQ=;
        b=HH5P9qni88EU1qnzsWwsVa98c+L8jwWQdVLlu7EhcD+9oBVZa++oQUPmFFeOTt/YBT
         R6F6Ynp2GJ+L/TGymrZmQ5EkjlIukG+lo8L83B8/RkzdYiMDo3zVG0VEqwfQM5ZxAAUF
         9AP1sZu/y7UpW8N2DknJLR4LlcxdWD79ezMOtQGAgzXLdh9a1/HhwibhLE+m4mKzh9jG
         2GWU889bawgQrpFz0aDfS1H1ROljbjY4Vf4tNaXvO6wR9I1GZ29kY3i/D0P3rvh1VX0w
         G6y+rCfL3cVUpXMLO5+2Id/OpSUtthfp347EkMsiVPMveF7nmEiRxWvfjYlAqWAJND6l
         oNpw==
X-Gm-Message-State: AOJu0Yy0Ofj5bixF07eWxNeJib01F6NQdjoa8LzL27cGcJebwAFy4mSu
        HL/m1DYaX/lkxfk+KN4lWqmXTenRulmHmFhYEWdRcVtY
X-Google-Smtp-Source: AGHT+IHgkOpo2eRLFlie1PG6CcKvakaHjbcNDgXW+Ek2vfTiqqqNfAJ6HW5TsnQrLWRuJtvMr8uAUA==
X-Received: by 2002:a17:906:319b:b0:99b:499c:ddb6 with SMTP id 27-20020a170906319b00b0099b499cddb6mr3105829ejy.68.1691227931847;
        Sat, 05 Aug 2023 02:32:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-52-12-96.retail.telecomitalia.it. [82.52.12.96])
        by smtp.gmail.com with ESMTPSA id j15-20020a170906430f00b0099b76c3041csm2491083ejm.7.2023.08.05.02.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Aug 2023 02:32:11 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 3/3] ARM: dts: stm32: support display on stm32f746-disco board
Date:   Sat,  5 Aug 2023 11:32:02 +0200
Message-Id: <20230805093203.3988194-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230805093203.3988194-1-dario.binacchi@amarulasolutions.com>
References: <20230805093203.3988194-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support to Rocktech RK043FN48H display on stm32f746-disco board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Raphaël Gallais-Pou <raphael.gallais-pou@foss.st.com>

---

Changes in v7:
- Add 'Reviewed-by' tag I forgot in v6.
  https://lore.kernel.org/linux-arm-kernel/20230629083726.84910-1-dario.binacchi@amarulasolutions.com/T/

Changes in v6:
- Remove dma nodes from stm32f746-disco.dts, they are not used by LTDC,
  so there is no need to enable them.

Changes in v5:
I am confident that framebuffer sizing is a real requirement for STM32 boards,
but I need some time to understand if and how to introduce this functionality.
Therefore, I drop the following patches to allow the series to be fully merged:
 - [4/6] dt-bindings: display: stm32-ltdc: add optional st,fb-bpp property
 - [5/6] ARM: dts: stm32: set framebuffer bit depth on stm32f746-disco
 - [6/6] drm/stm: set framebuffer bit depth through DTS property

Changes in v4:
- Use DTS property instead of module parameter to set the framebuffer bit depth.

Changes in v3:
- drop [4/6] dt-bindings: display: simple: add Rocktech RK043FN48H
  Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next):
  https://cgit.freedesktop.org/drm/drm-misc/commit/?id=c42a37a27c777d63961dd634a30f7c887949491a
- drop [5/6] drm/panel: simple: add support for Rocktech RK043FN48H panel
  Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)
  https://cgit.freedesktop.org/drm/drm-misc/commit/?id=13cdd12a9f934158f4ec817cf048fcb4384aa9dc

 arch/arm/boot/dts/st/stm32f746-disco.dts | 43 ++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f746-disco.dts b/arch/arm/boot/dts/st/stm32f746-disco.dts
index c11616ed5fc6..c00d34179e2e 100644
--- a/arch/arm/boot/dts/st/stm32f746-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f746-disco.dts
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
@@ -99,6 +130,18 @@ &i2c1 {
 	status = "okay";
 };
 
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
2.34.1

