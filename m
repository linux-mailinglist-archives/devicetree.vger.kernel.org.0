Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FF95673FF1
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 18:28:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbjASR2p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 12:28:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbjASR2o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 12:28:44 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FC9653992
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 09:28:37 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id o17-20020a05600c511100b003db021ef437so1800398wms.4
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 09:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8lzqfELb7YUpCCEgx48Y/w/kDKrqRmQBPRy0hZ8B7d4=;
        b=NL/IJOQaR+JZyc/0NDfnhbgwykCNzKK3aeG+c19LGOl/1VHUta9PWfw1nIwa4n1AeH
         IJKvUGlKJRerX1xfdF1AKoZGH9dzGxakl2H9sa/MRtrwcqh1wMQuF26SAoYKcdjobIsa
         1TX/sR02bsku/bkhWjq+ssnY0wgsevObIktbC5Ka13S4aSXeAoH9ekkvV7trU/mlVjA8
         cXBnlhNdlvsG7VHhjc7USmckuwLFaZ5kb5woMahSyAYGZIacnd9SMGcO92d1did1654U
         2rSS1t04wtEtNW41Y7I6wGliE2Bg46xYzsd1scK4EccJmyAfc/VSrYwhILGeSb7S0grV
         0S4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8lzqfELb7YUpCCEgx48Y/w/kDKrqRmQBPRy0hZ8B7d4=;
        b=HsC9fQ7TKLpilr6W+Aim46XQIX6/ON8MWDSNG5dZW7n29TFCrzxcNbA0AJanBHyqcc
         2/oltO02mUxKIvTBXlExVwWDfaPbF4mkiGzaf6dOe5EVzOM6xWwXofPBewDtQkwGvC1g
         RKcKIcgwwZ111gs59voWr/o5ZPYEJ/S2hHQ4DRzoXUxk3P8NiaLTOacAEevM1BFsuxUS
         OcodOhwRTOXQ6YIpedr/PlYXlM20WTPlg3xbnr7udM+vDjYENICYuX6OgT3pdtjCjF2h
         SILeDzm7eKzimtI/l+akR2+NxuuSSGwHBLR2qrmJILv0dB7RBo9phvejNoJvmfEz+gzB
         c24A==
X-Gm-Message-State: AFqh2ko6wxFZJShdlo21iVqOe10pEAbpQzOVm3zWFxe9RHC5CQ305yzc
        HnC1yRq19mlMVNs0+fnT0/MCGg==
X-Google-Smtp-Source: AMrXdXsKr2SCHosNK7ZHaW6ug4MG8CwdPEGjnF7NOVOhRGvPafXDhULrCDPzdMjZPNj1ffpR284ipQ==
X-Received: by 2002:a05:600c:a52:b0:3db:122c:1638 with SMTP id c18-20020a05600c0a5200b003db122c1638mr6707028wmq.27.1674149315732;
        Thu, 19 Jan 2023 09:28:35 -0800 (PST)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id h11-20020a05600c314b00b003db2e3f2c7csm124186wmo.0.2023.01.19.09.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 09:28:35 -0800 (PST)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Thu, 19 Jan 2023 18:28:19 +0100
Subject: [PATCH v2 1/2] arm64: dts: mediatek: add spidev support for mt8365-evk board
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230118-mt8365-spi-support-v2-1-be3ac97a28c6@baylibre.com>
References: <20230118-mt8365-spi-support-v2-0-be3ac97a28c6@baylibre.com>
In-Reply-To: <20230118-mt8365-spi-support-v2-0-be3ac97a28c6@baylibre.com>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1276; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Suyd6CKtFRX281RLLJau/Tt13cU5nwILzGsKWHcTvXA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBjyX3B688UZjs+ZlBdfgwDHOvO2tLXCnlF4Vm2mytT
 AxqVjVaJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCY8l9wQAKCRArRkmdfjHURdQ3EA
 CyQnStyVIpy0hcdFn7IuaY/fmwqLaqpC3BMBnPVgMtADlkviPThxtByX/a03S2rNMXsxA51ZoigWli
 RmDxISjL1mzCu5hBnzODbMX/EsR+mQtJZyrVyaNDsIxGv5mFiWU90y3XdzO30sMEmI2lFUlY2QY5Hn
 fDPSUm6QvVNPHzfA7ATyJ+neO5Gnwz8CO9o8ypjV2j5c/3CI+3L5ObdSop0EDG0DWmLsYhaxGwDGoS
 4OISvh5jnyQEDeCxRjPIPRqx1mcvI6dalAnjqBYYRMeHiDpScaihqQ3zHmde3DKKMLjzoU0/ADbGhB
 IXRDdRVsJ2M27+8qf2SBdHzlbB3NF+hty4UnMOAOW3UW9Wj0OD6OW6FnRGY0lYdZcHFMMPGbPIFuQy
 a4U7zrwS0y6erAPgDtbb1ZynSyOC0XYHyrm90/7xdx/6cdTnWP5i8PAQ7wpUpAGsJ8IkeIREw3qk1j
 xUw63g1afMYAzGYVjjwEHGas/TVTzbp/0XgfCYX/lZ/TJlJ8bfxbUo9S4S/F+Z9dn5VgsN+a6pmd/6
 6kEuat0FU1yagR934vPaCF5TlPgkco7sGc7SOk8fMqU8tDlKzhuuWL+x6OuScYbNcIc0wmEZNZHAYc
 l3d/V8MtjCA+sh38x1w9ctRdP2bhvzmdVRxOJRhRbVYCX5zqgh0+W8GdR5EQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SPI pins and spidev support for mt8365-evk.

Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 275ea3a0e708..c1d603cb129a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -142,6 +142,17 @@ pins {
 				 <MT8365_PIN_116_I2S_BCK__FUNC_PWM_C>;
 		};
 	};
+
+	spi_pins: spi-pins {
+		pins {
+			pinmux = <MT8365_PIN_26_SPI_CS__FUNC_SPI_CSB>,
+				 <MT8365_PIN_27_SPI_CK__FUNC_SPI_CLK>,
+				 <MT8365_PIN_28_SPI_MI__FUNC_SPI_MI>,
+				 <MT8365_PIN_29_SPI_MO__FUNC_SPI_MO>;
+			bias-disable;
+		};
+	};
+
 };
 
 &pwm {
@@ -150,6 +161,19 @@ &pwm {
 	status = "okay";
 };
 
+&spi {
+	pinctrl-0 = <&spi_pins>;
+	pinctrl-names = "default";
+	mediatek,pad-select = <0>;
+	status = "okay";
+
+	spidev@0 {
+		compatible = "mediatek,genio";
+		spi-max-frequency = <5000000>;
+		reg = <0>;
+	};
+};
+
 &uart0 {
 	pinctrl-0 = <&uart0_pins>;
 	pinctrl-names = "default";

-- 
b4 0.10.1
