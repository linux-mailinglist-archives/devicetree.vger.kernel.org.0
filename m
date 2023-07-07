Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81BC474B007
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 13:40:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231316AbjGGLkf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 07:40:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231972AbjGGLkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 07:40:35 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE510170F
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 04:40:31 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b70404a5a0so27294371fa.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 04:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688730030; x=1691322030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwsRbi53bqnEMCnbf2dRddqHGWVBwFub5lMwhB0pcXo=;
        b=Gue5g/WS0/WeS2TdDba0ygqMBlQiYHm33slx2CzctnpKzBKgbosCkRoFCAwNacZ7Fn
         Qs5PHIGC6C3l0ag+wjTr/aXWmMM6y42SSWNGb9hY04mrBGr5k7z2Tw+2Vq6PjxnuYvFw
         eoqjTl2lzbUGxnjYCzC+hWnWy4vCZTyYrKNNT7UDLh6ZoDQeI94i6G0loBO0ALAx9QX6
         L15mWsbfENiliZoEeRGq0HTNbheqOXo/1a7oof6Aw3/gI7WSlGp8arZRz7tmQeT3mhNF
         somSzm2Gk+FrDwzteBlrp4GvTQUTk27VTQ1SwTdBgTVD1CPmaQY/uaJQ9UHxP9CjmIlf
         /kgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688730030; x=1691322030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UwsRbi53bqnEMCnbf2dRddqHGWVBwFub5lMwhB0pcXo=;
        b=VHmSa5t5x4lD62HY0kO04gUXcJVAVL790vI4MI7SOVeSzj7plcUeT2cmiLCGSvWKkt
         uGNjokWD0M/n+i7oMCKWDeK0YnlGIWd1TUIGUmsa2leBDluqVoSl4w5rtDSvkV6H8+g+
         2+31ZbU/XYYXgY/PxEkbVQVtQzsOWNF087h7LcciXBaXltqv+tPuT/HcgAfxE52b2QHA
         ghJQUD20e8/HhUBKOxB2WLvPCz7JFRZpcxf9DF0kiiMmwa9WpDYmKjasTg55/GvSFm3Y
         Wg/AaFNv77aOxcRDhIXCO8q9YhXNugfgEFkkwc4bu0LUYJNfrT36/5opRYagPy9Q0ZmQ
         zigA==
X-Gm-Message-State: ABy/qLZbawDj9WQKKfgXXT6TgkSWM7H21eg6MxBOqUj9HuB1KJ2jjqh3
        W+qr4dUiH8kzBOannV1HX/o=
X-Google-Smtp-Source: APBJJlEbgNDHn4Hr2zua5QBwEKCaCn4CVZnN/GK5vs9XW2AKNb67CRLTDwnxW/3fw1b7tbp4FmU3xg==
X-Received: by 2002:a2e:998a:0:b0:2b6:df00:b371 with SMTP id w10-20020a2e998a000000b002b6df00b371mr4162872lji.6.1688730030159;
        Fri, 07 Jul 2023 04:40:30 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id k19-20020a2e9213000000b002b708450951sm607722ljg.88.2023.07.07.04.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 04:40:29 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 4/4] ARM: dts: BCM53573: Use updated "spi-gpio" binding properties
Date:   Fri,  7 Jul 2023 13:40:04 +0200
Message-Id: <20230707114004.2740-4-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230707114004.2740-1-zajec5@gmail.com>
References: <20230707114004.2740-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Switch away from deprecated properties.

This fixes:
arch/arm/boot/dts/broadcom/bcm947189acdbmr.dtb: spi: gpio-sck: False schema does not allow [[3, 21, 0]]
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/broadcom/bcm947189acdbmr.dtb: spi: gpio-miso: False schema does not allow [[3, 22, 0]]
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/broadcom/bcm947189acdbmr.dtb: spi: gpio-mosi: False schema does not allow [[3, 23, 0]]
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/broadcom/bcm947189acdbmr.dtb: spi: 'sck-gpios' is a required property
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/broadcom/bcm947189acdbmr.dtb: spi: Unevaluated properties are not allowed ('gpio-miso', 'gpio-mosi', 'gpio-sck' were unexpected)
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts b/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts
index 3709baa2376f..0b8727ae6f16 100644
--- a/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts
+++ b/arch/arm/boot/dts/broadcom/bcm947189acdbmr.dts
@@ -60,9 +60,9 @@ button-wps {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 21 0>;
-		gpio-miso = <&chipcommon 22 0>;
-		gpio-mosi = <&chipcommon 23 0>;
+		sck-gpios = <&chipcommon 21 0>;
+		miso-gpios = <&chipcommon 22 0>;
+		mosi-gpios = <&chipcommon 23 0>;
 		cs-gpios = <&chipcommon 24 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.35.3

