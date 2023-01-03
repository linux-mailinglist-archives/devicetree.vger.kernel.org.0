Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 936B165C6D9
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 20:00:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233871AbjACTAM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 14:00:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238056AbjACTAK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 14:00:10 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 553AB12AB9
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 11:00:09 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id i188so32706413vsi.8
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 11:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PR3aU0k/OmiWiqLrFEs0D+3X9AteKIAnxrCijWnHS8A=;
        b=K2KiJxTlmgiAshy+EMORqs3eq3u8Ld5RqLXKm6BopQHYE1f66U7ScvmLB7SgUQvHrV
         iptumueM+HPeBYSCyE0XJE5xZtSCPReqllyb18xvUzf9+8YqqOaZLOGLOnsvT/9hhN1a
         NSJAIUp/dwVhCeoTbQfcpttWeU0iaVwMJqguas6oAXHcaZAiE6LMOkurMr//5Nkm0jKl
         iQhFV91fZVLGnS6qHRRNp382gLlnI/DPPHzAkWz7mMT0fqWcNFYgjVNr60RuVqKCQnUp
         +mCKyeXdSFozKYHzunpoyS/eQuLYl2/WXwgi/j4u9MuGNva021iEv7hnm3P+5Q45jvZY
         M1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PR3aU0k/OmiWiqLrFEs0D+3X9AteKIAnxrCijWnHS8A=;
        b=4N588kwywfMUvQoeSPtsxmVeu+g/0QMvJNVSjFrBpy0rc4w4efxjAYOKVClpTjJQyk
         xRdrP3eRLSOigsMsDVShsCkBGMjCWmbEybxisBAifpGioncdEnySYR/qrHU32zJ2nhe3
         /49r1tp+6oPNZTnfbN9W/jtLfXstCBZZ4dltqYpZi0S9xcR0cqrawtT5Meq8+8KUu2ku
         tzx1P/yHXrhdd9Q5D9h3aCmi5r5hSKCEBNytjo34/x87CZ+SnWzpB6OERPWStAQHfpxQ
         lOgnYeelCKE6l4RfL5Gt4NcTdvrlw8CmQOabC64BdUACT7JfMAOf4qCr8CyPmdrxur3v
         nIhw==
X-Gm-Message-State: AFqh2krFfTAC0KT8DAQ/BuCmR4ZIgNnTYG2K0Fvv+bWVIwGTADKG2e+Y
        mDgZpfG8woabDiy6MDScJlbupVzAKA+Q9nuObBnh4w==
X-Google-Smtp-Source: AMrXdXsLZr/hT40jUsNVbTH/Whau5ElE8SowHf1vUpJkqqxkPHZWrJQAhK0YE8MvjMONs3W8U78jfUFQ0WRuBd5mjhg=
X-Received: by 2002:a67:c782:0:b0:3b3:10b1:8e64 with SMTP id
 t2-20020a67c782000000b003b310b18e64mr5456624vsk.42.1672772408117; Tue, 03 Jan
 2023 11:00:08 -0800 (PST)
MIME-Version: 1.0
References: <20230102140402.582698-1-festevam@denx.de>
In-Reply-To: <20230102140402.582698-1-festevam@denx.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Tue, 3 Jan 2023 10:59:57 -0800
Message-ID: <CAJ+vNU0NYf202GjQp4Vcf=kSP2m1uzLzTWkSPEhvBkZH9HGHoA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8m-venice: Remove incorrect 'uart-has-rtscts'
To:     Fabio Estevam <festevam@denx.de>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 2, 2023 at 6:04 AM Fabio Estevam <festevam@denx.de> wrote:
>
> The following build warnings are seen when running:
>
> make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml
>
> arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb: serial@30860000: cts-gpios: False schema does not allow [[33, 3, 1]]
>         From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb: serial@30860000: rts-gpios: False schema does not allow [[33, 5, 1]]
>         From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> ...
>
> The imx8m Venice Gateworks boards do not expose the UART RTS and CTS
> as native UART pins, so 'uart-has-rtscts' should not be used.
>
> Using 'uart-has-rtscts' with 'rts-gpios' is an invalid combination
> detected by serial.yaml.
>
> Fix the problem by removing the incorrect 'uart-has-rtscts' property.
>
> Fixes: 27c8f4ccc1b9 ("arm64: dts: imx8mm-venice-gw72xx-0x: add dt overlays for serial modes")
> Fixes: d9a9a7cf32c9 ("arm64: dts: imx8m{m,n}-venice-*: add missing uart-has-rtscts property to UARTs")
> Fixes: 870f645b396b ("arm64: dts: imx8mp-venice-gw74xx: add WiFi/BT module support")
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso  | 1 -
>  .../boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso  | 1 -
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi        | 1 -
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts         | 3 ---
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts         | 3 ---
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts         | 1 -
>  arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts         | 1 -
>  arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts         | 1 -
>  8 files changed, 12 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
> index 3ea73a6886ff..f6ad1a4b8b66 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
> @@ -33,7 +33,6 @@
>         pinctrl-0 = <&pinctrl_uart2>;
>         rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
>         cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso
> index 2fa635e1c1a8..1f8ea20dfafc 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso
> @@ -33,7 +33,6 @@
>         pinctrl-0 = <&pinctrl_uart2>;
>         rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
>         cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
> index 244ef8d6cc68..7761d5671cb1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
> @@ -222,7 +222,6 @@ &uart3 {
>         pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_bten>;
>         cts-gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
>         rts-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>
>         bluetooth {
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> index 750a1f07ecb7..a186df2f833f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> @@ -733,7 +733,6 @@ &uart1 {
>         dtr-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
>         dsr-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
>         dcd-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> @@ -749,7 +748,6 @@ &uart3 {
>         pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
>         cts-gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
>         rts-gpios = <&gpio4 9 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> @@ -758,7 +756,6 @@ &uart4 {
>         pinctrl-0 = <&pinctrl_uart4>, <&pinctrl_uart4_gpio>;
>         cts-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
>         rts-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
> index 32872b0b1aaf..e8bc1fccc47b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
> @@ -664,7 +664,6 @@ &uart1 {
>         pinctrl-0 = <&pinctrl_uart1>, <&pinctrl_uart1_gpio>;
>         rts-gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
>         cts-gpios = <&gpio4 24 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> @@ -681,7 +680,6 @@ &uart3 {
>         pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
>         rts-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
>         cts-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>
>         bluetooth {
> @@ -699,7 +697,6 @@ &uart4 {
>         dtr-gpios = <&gpio4 3 GPIO_ACTIVE_LOW>;
>         dsr-gpios = <&gpio4 4 GPIO_ACTIVE_LOW>;
>         dcd-gpios = <&gpio4 6 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
> index 8ce562246a08..acc2ba8e00a8 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
> @@ -581,7 +581,6 @@ &uart1 {
>         dtr-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
>         dsr-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
>         dcd-gpios = <&gpio3 24 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>  };
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
> index b9444e4a3d2d..7c12518dbc96 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
> @@ -643,7 +643,6 @@ &uart3 {
>         pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
>         rts-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
>         cts-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>
>         bluetooth {
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> index ceeca4966fc5..8eb7d5ee38da 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> @@ -623,7 +623,6 @@ &uart3 {
>         pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
>         cts-gpios = <&gpio3 21 GPIO_ACTIVE_LOW>;
>         rts-gpios = <&gpio3 22 GPIO_ACTIVE_LOW>;
> -       uart-has-rtscts;
>         status = "okay";
>
>         bluetooth {
> --
> 2.25.1
>

Fabio,

Acked-by: Tim Harvey <tharvey@gateworks.com>

Thanks,

Tim
