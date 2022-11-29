Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A056A63C4B7
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 17:09:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235551AbiK2QJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 11:09:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234951AbiK2QJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 11:09:36 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1C92BC9A
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:09:34 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id d1so22877913wrs.12
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=newflow-co-uk.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBK4M6em14NDAYl08ahmQwtvd1CwNFvnLrorbySUXHw=;
        b=mkeVZUhSuS2q18zV4Jauf8ngKtkCNC7o1kuMriwBpcwOhkk3ZUFVypUmKRb38jidwx
         2+xloFQMuXG97oxMuj1KOaAFsHJxc9UBckW1fa+2j/QsQ813Tx1D+y2blh4pjW8Zvsag
         efpsobP81/ZjbhyzMCHz+bxA7pebgaczFE0ju3ewwUCH25xeA7Kx4HTQA7HUgvToSZOc
         e2Ugifhw34NopPSx1vc8iIx+qZk8llklBTXWOnqbKe39gCgZByztge7v3+1bL/xsrc0r
         zSbagjYutNjmm6SSiKVnMMO1XMq84RGYNCtVIblvJxHN4GYOhHVxyrYx2qfas7dBOZQs
         +84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eBK4M6em14NDAYl08ahmQwtvd1CwNFvnLrorbySUXHw=;
        b=QliPG4GoiDAuBNP4lsn8TdNVsRJxP6vrLrYiDLkA3AmmhptPyN7QMc1M1Ttne11Wiv
         Fbc+5EZcmDAx5LmTN3uYVrjjsT0PvANEgP6Yi6W6v0WpzQ02JX5Qx/kMw65VT5UPvrs2
         bO9oJy035dAPwDUD9ge0EQft/J1GcyxKRKxhUZnVGyoYCIFKzRG180DmcHZmSsvsMNj1
         GNQ98r55xX04TwExat3gRLP7E8HySHFeG8SrcRObCB1X/rHJt4ejR8G0DRwlNP2azxL5
         cS6bz2HTTVazPH+4/HymnRYdRhQghIweRYc1csVLovVyicmkQiifNxyjxEeDzlDITBnl
         YmXw==
X-Gm-Message-State: ANoB5pn6ke8RQVs+yBkKmf9nFcUQDAt7Zo3/EdNm3vkzi5MFloA29XEz
        QWnPRfIN639wjpDV8cxGmyoAL+9XEJgA97vJ
X-Google-Smtp-Source: AA0mqf4SDLkiMirCTpjl9teqzFNwy7mf10jSrvsbLuSMo3PEfnUW1UZNBf/31GL8c7vO35yA2L+hug==
X-Received: by 2002:a05:6000:1d84:b0:236:5022:c705 with SMTP id bk4-20020a0560001d8400b002365022c705mr33965754wrb.466.1669738174192;
        Tue, 29 Nov 2022 08:09:34 -0800 (PST)
Received: from mpfj-unity.. ([94.12.112.226])
        by smtp.gmail.com with ESMTPSA id y18-20020a05600c365200b003c6c5a5a651sm2477572wmq.28.2022.11.29.08.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 08:09:33 -0800 (PST)
From:   Mark Jackson <mpfj@newflow.co.uk>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Mark Jackson <mpfj@newflow.co.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] ARM: dts: am335x-nano: Fix GPIO settings for RTS/CTS pins on UART3 & 4
Date:   Tue, 29 Nov 2022 16:08:14 +0000
Message-Id: <20221129160818.276696-2-mpfj@newflow.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221129160818.276696-1-mpfj@newflow.co.uk>
References: <20221129160818.276696-1-mpfj@newflow.co.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The NanoBone platform uses GPIO pins for RTS/CTS control.
The DTS still uses the hardware RTS/CTS pins so this needs fixing.

Signed-off-by: Mark Jackson <mpfj@newflow.co.uk>
---
 arch/arm/boot/dts/am335x-nano.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-nano.dts b/arch/arm/boot/dts/am335x-nano.dts
index b6f2567bd65a..05cbfe24f778 100644
--- a/arch/arm/boot/dts/am335x-nano.dts
+++ b/arch/arm/boot/dts/am335x-nano.dts
@@ -120,8 +120,8 @@ AM33XX_PADCONF(AM335X_PIN_SPI0_D0, PIN_OUTPUT, MUX_MODE1)		/* spi0_d0.uart2_txd
 
 	uart3_pins: uart3_pins {
 		pinctrl-single,pins = <
-			AM33XX_PADCONF(AM335X_PIN_LCD_DATA10, PIN_INPUT_PULLUP, MUX_MODE6)	/* lcd_data10.uart3_ctsn */
-			AM33XX_PADCONF(AM335X_PIN_LCD_DATA11, PIN_OUTPUT, MUX_MODE6)		/* lcd_data11.uart3_rtsn */
+			AM33XX_PADCONF(AM335X_PIN_LCD_DATA10, PIN_INPUT_PULLUP, MUX_MODE7)	/* lcd_data10.gpio2[16] */
+			AM33XX_PADCONF(AM335X_PIN_LCD_DATA11, PIN_OUTPUT, MUX_MODE7)		/* lcd_data11.gpio2[17] */
 			AM33XX_PADCONF(AM335X_PIN_SPI0_CS1, PIN_INPUT, MUX_MODE1)		/* spi0_cs1.uart3_rxd */
 			AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, PIN_OUTPUT, MUX_MODE1)		/* ecap0_in_pwm0_out.uart3_txd */
 		>;
@@ -129,8 +129,8 @@ AM33XX_PADCONF(AM335X_PIN_ECAP0_IN_PWM0_OUT, PIN_OUTPUT, MUX_MODE1)		/* ecap0_in
 
 	uart4_pins: uart4_pins {
 		pinctrl-single,pins = <
-			AM33XX_PADCONF(AM335X_PIN_LCD_DATA12, PIN_INPUT_PULLUP, MUX_MODE6)	/* lcd_data12.uart4_ctsn */
-			AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_OUTPUT, MUX_MODE6)		/* lcd_data13.uart4_rtsn */
+			AM33XX_PADCONF(AM335X_PIN_LCD_DATA12, PIN_INPUT_PULLUP, MUX_MODE7)	/* lcd_data12.gpio0[8] */
+			AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_OUTPUT, MUX_MODE7)		/* lcd_data13.gpio0[9] */
 			AM33XX_PADCONF(AM335X_PIN_UART0_CTSN, PIN_INPUT, MUX_MODE1)		/* uart0_ctsn.uart4_rxd */
 			AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_OUTPUT, MUX_MODE1)		/* uart0_rtsn.uart4_txd */
 		>;
-- 
2.34.1

