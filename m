Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2942661FEBF
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 20:34:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232506AbiKGTd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 14:33:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232588AbiKGTdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 14:33:55 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C94C126AEA
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 11:33:50 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id f7so19225676edc.6
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 11:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Jh56uS5OpsbPqPiitl7Ap2+9nXxAh9f7kXC7MUEZBQ=;
        b=cWn9KYubQBG1K/4Ts/RP1KT0kIY/kkgyMcf0LUTFfBbNdL7htrBQe9nPdvivNqXqVg
         gf8UdWSX1t7m9FYhu1DPctzNJQeptjuGMKJ+qERQys6A5Kud+P39MPWEUa31af80uVC6
         ku+fG75tg6zjOh/rBFOFKTcoNO4sliQ09/lO5uTT2Fg9o6wsbWOJiDbWqGB4oOpOteLj
         GtDgDur4g9R3cFGXitKXsdwalqqI5eQQjYfHjP88BhCLz6Mctppxv99wPSmgParLnT0v
         PAMTjUZcOojbKfA/2ypYPTO18ZECoagzoRgeugOzU/joZXvwW48xfs2FWE/+5x7UiLHi
         duiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Jh56uS5OpsbPqPiitl7Ap2+9nXxAh9f7kXC7MUEZBQ=;
        b=WCzG9TvOPLANRsyivlKI++8BHANW8k1eEg7Ru0jV61CeezStwWY/w+PrEPAH411EBe
         lGDKDd9lmK/uYJMKf5h4ZjhS/DhGYjITs7zCXIb75ayHsNilTVB5uL4MRYsoU2c0aPBB
         YdKH6ubkJ/5eDtVIJdEqlgbOqiFozHdm866JSppbTyx2hUwqDuE52Y1q+uKlva3yFmzG
         dpjQZY46HznuVBXzEw+P79PYflV9Mrh1/A+2Pkv5gjBMEGLLkbz7FM64m1CTUv+lfIxR
         ayv4/Z9b/yg4UTvfGhsMBpvhQvu4KhKMnoSPpbBYOGgoZcvQ68UcpWcfEzKpB4DgOlRK
         JGlA==
X-Gm-Message-State: ACrzQf0P+cWzOgzhTOj3/2R/IbtB1UbpSYYfw2PQDtCNCooWWT6RcZve
        Xx9l8dr+TR2GEb13ogkRnmA65SIrXcgrDQ==
X-Google-Smtp-Source: AMsMyM5Nn7m5677obEnnXKWdQzX/gsikzr3kzz2CYLsMon01HCuqeOTTAwz4ISU9LXjUzLE2/ovk1A==
X-Received: by 2002:aa7:d506:0:b0:461:565e:8673 with SMTP id y6-20020aa7d506000000b00461565e8673mr52202316edq.416.1667849629292;
        Mon, 07 Nov 2022 11:33:49 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id w19-20020a1709064a1300b007ad9adabcd4sm3749095eju.213.2022.11.07.11.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 11:33:48 -0800 (PST)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
        Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 00/10] ARM: dts: suniv: F1C100s: add more peripherals
Date:   Mon, 07 Nov 2022 20:33:47 +0100
Message-ID: <1920557.yKVeVyVuyW@kista>
In-Reply-To: <20221107005433.11079-1-andre.przywara@arm.com>
References: <20221107005433.11079-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne ponedeljek, 07. november 2022 ob 01:54:23 CET je Andre Przywara 
napisal(a):
> This is a fixed version of the initial post. I dropped the two patches
> that were already applied by the respective maintainers, and fixed the
> smaller issues mentioned in the review.
> This adds v2 of the series enabling the "Lctech Pi F1C200s" board on top,
> also with the comments addressed.

Please don't combine series if not agreed upon before. Now whole series will 
be delayed until USB is sorted out.

Best regards,
Jernej

> The whole series goes on top of v3 of Icenowy's F1C100s USB support
> series [1]. There is no real conflict, but the lctech-pi.dts file
> references the new USB DT nodes from the .dtsi.
> 
> I put a git repo with all those patches up here:
> https://github.com/apritzel/linux/commits/f1c100s-devices-v2
> 
> For a changelog see below.
> 
> [1]
> https://lore.kernel.org/linux-arm-kernel/20221106154826.6687-1-andre.przywa
> ra@arm.com/T/#t
> 
> =================
> The Allwinner F1C100s series of SoCs shares many peripherals with other
> Allwinner SoCs. Since they are compatible, we can use the existing
> drivers, and just need to enable the devices in the DT.
> 
> This series adds the I2C controllers, the PWM device, the CIR (infrared)
> device and the LRADC (aka. KEYADC, low res ADC) to the F1C100s .dtsi, so
> boards can just use them by setting 'status = "okay";'.
> 
> The only thing missing driver-wise is the IR mod clock, which was not
> modeled in our CCU driver. Patch 4/10 fixes that.
> 
> For every device there is one patch that adds the new compatible string
> to the DT binding, and another patch to add the DT node.
> 
> This has been tested on the Lctech Pi F1C200s board, by:
> - Connecting an LED to PE6, and configuring this as the PWM pin in the DT.
>   Doing a sweep on /sys/class/pwm/pwm1/duty_cycle made the LED fade out.
> - Configuring PD0/PD12 as I2C0, and letting i2c-detect find the on-board
>   NS2009 I2C chip.
> - Connecting two resistors to the "ADC" pin, and configuring them as two
>   buttons in the DT. /dev/input/event0 properly reported button presses.
> - Connecting an infrared receiver to PE11, configured as CIR.
>   ir-keytable reported key presses on a remote control.
> 
> All those (basic) tests were successful, and prove that the peripherals
> do work and are compatible.
> 
> The final three patches add the binding docs and the .dts file for the
> Lctech Pi F1C200s development board.
> 
> Please have a look and test on your hardware, if possible.
> 
> Cheers,
> Andre
> 
> Changelog v1 ... v2:
> - dropped former patch 3/9 and 8/9: already applied
> - increase register frame size in DT for PWM and LRADC
> - drop I2C1 pins from pinctroller DT node
> - increase IR mod clock mux to 2 bits
> - fix mistyped comma in vendor prefix name
> - drop unneeded mmc0 and spi0 aliases from Lctech Pi DT
> - add /omit-if-no-ref/ tag to UART1 pins
> - add ACKs and Reviewed-by tags
> 
> 
> Andre Przywara (10):
>   dt-bindings: pwm: allwinner,sun4i-a10: Add F1C100s compatible
>   ARM: dts: suniv: f1c100s: add PWM node
>   ARM: dts: suniv: f1c100s: add I2C DT nodes
>   clk: sunxi-ng: f1c100s: Add IR mod clock
>   dt-bindings: media: IR: Add F1C100s IR compatible string
>   ARM: dts: suniv: f1c100s: add CIR DT node
>   ARM: dts: suniv: f1c100s: add LRADC node
>   dt-bindings: vendor-prefixes: add Lctech name
>   dt-bindings: arm: sunxi: add compatible strings for Lctech Pi
>   ARM: dts: suniv: Add Lctech Pi F1C200s devicetree
> 
>  .../devicetree/bindings/arm/sunxi.yaml        |  6 ++
>  .../media/allwinner,sun4i-a10-ir.yaml         |  1 +
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml |  4 +-
>  .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
>  arch/arm/boot/dts/Makefile                    |  1 +
>  arch/arm/boot/dts/suniv-f1c100s.dtsi          | 76 ++++++++++++++++++
>  arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts | 78 +++++++++++++++++++
>  drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c      | 11 ++-
>  drivers/clk/sunxi-ng/ccu-suniv-f1c100s.h      |  2 +-
>  include/dt-bindings/clock/suniv-ccu-f1c100s.h |  2 +
>  10 files changed, 180 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts
> 
> --
> 2.35.5


