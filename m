Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8638557FCE4
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 12:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234437AbiGYKEm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 06:04:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234323AbiGYKEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 06:04:40 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF2F7175B6
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:04:39 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id e69so19173756ybh.2
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fj8jvxKEX8iiGvjDp+IibDYFnluQcdot53aXUrKanc0=;
        b=ihR+osbfovGu1DrmKYkfjiu3gA7GGAis+L5caXfSadLesTIoliafD6AXKLa+rStWTM
         3sGztJhxjeieBRZXxzZBMGErTG5AVIEQiGasLdCHpRuPPIK3bL9cK1nu6VW00y44dPNN
         8zf9ki36BuNNsX1OIFBqBcrb6DrK9sgjpk/VU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fj8jvxKEX8iiGvjDp+IibDYFnluQcdot53aXUrKanc0=;
        b=sJdW7a9xfuAOAHDYYe4yLAbzDSOkgy0nbEzvLskVGQ8x1LvjtiLDj/8nI4Nr1LMtC1
         p2/FiEO+Kxcr64d1pLTi5sKnpv25h/XB7iBm1tJKuCB23wnZs0hxvEOTg1Phvy44Fq95
         mU8ROrsiY7l95dOKOOCdzRuB/66uXgfXw0ljOLSNqCkIyaf4gXA2dMc7t7EMORHMWUng
         SUK1BaOZQFCdrxk1YoK0DxSU1mW/2Tl3BZV4a4N8oMCyGX4ysVE+uVui7wkaOOjnSHF1
         38AUB6YVV9Sdg8ZMfCmJfX1WEJjZGE3Dq1FXxQ6+X6EbvgsCwL7edkIvX4Byob9rBf4U
         UsYw==
X-Gm-Message-State: AJIora9UAtJhE17FlnoeQ+jqMnd9uYimVkhHE4y3PgQ9IHHuciKLM2iJ
        jiIGy5gCe2rgMvbTfoyCI9X7FmZmB0zlmI/gVTgHkA==
X-Google-Smtp-Source: AGRyM1vwO1tEitj2Z7M3sTrasfs3Au36Gr9ZYDzY4HnZeNjRVAFADoS/fXYlDdnQ9/93C7H57l0UQw/Vsp3CIV3gx2Y=
X-Received: by 2002:a25:640c:0:b0:670:91a0:57e3 with SMTP id
 y12-20020a25640c000000b0067091a057e3mr8735202ybb.204.1658743479242; Mon, 25
 Jul 2022 03:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220721145017.918102-1-angelogioacchino.delregno@collabora.com> <20220721145017.918102-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220721145017.918102-3-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 25 Jul 2022 18:04:28 +0800
Message-ID: <CAGXv+5GuhXog_EjuxP_ej6768fdnwS9=__d-RWAn0aaK_NxY2w@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] arm64: dts: mediatek: cherry: Wire up the ChromeOS
 EC and GSC
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 10:51 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Wire up the ChromeOS Embedded Controller on SPI0 and its communication
> channel via SCP RPMSG along with all of the offered functionality,
> including Keyboard, Smart Battery Metrics (SBS), PWM controller, I2C
> tunnel, regulators and Type-C connector management.
>
> While at it, also add support for the Cr50 Google Security Chip (GSC)
> found on this platform on I2C3 to support TPM and also use it as an
> entropy source for the kernel.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../boot/dts/mediatek/mt8195-cherry.dtsi      | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> index feebbe367e93..87ac2b4f9814 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -149,6 +149,14 @@ &i2c3 {
>         clock-frequency = <400000>;
>         pinctrl-names = "default";
>         pinctrl-0 = <&i2c3_pins>;
> +
> +       cr50@50 {

tpm?

Also I think the CR50 should be a separate patch. It is not related
to the EC.

> +               compatible = "google,cr50";
> +               reg = <0x50>;
> +               interrupts-extended = <&pio 88 IRQ_TYPE_EDGE_FALLING>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&cr50_int>;
> +       };
>  };
>
>  &i2c4 {
> @@ -426,6 +434,21 @@ &pio {
>                 "AP_SPI_FLASH_MOSI",
>                 "AP_SPI_FLASH_MISO";
>
> +       cr50_int: cr50-irq-default-pins {
> +               pins-gsc-ap-int-odl {
> +                       pinmux = <PINMUX_GPIO88__FUNC_GPIO88>;
> +                       input-enable;
> +               };
> +       };
> +
> +       cros_ec_int: cros-ec-irq-default-pins {
> +               pins-ec-ap-int-odl {
> +                       pinmux = <PINMUX_GPIO4__FUNC_GPIO4>;
> +                       bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> +                       input-enable;
> +               };
> +       };
> +
>         i2c0_pins: i2c0-default-pins {
>                 pins-bus {
>                         pinmux = <PINMUX_GPIO8__FUNC_SDA0>,
> @@ -669,6 +692,11 @@ &scp {
>         memory-region = <&scp_mem>;
>         pinctrl-names = "default";
>         pinctrl-0 = <&scp_pins>;
> +
> +       cros-ec-rpmsg {
> +               compatible = "google,cros-ec-rpmsg";
> +               mediatek,rpmsg-name = "cros-ec-rpmsg";
> +       };
>  };
>
>  &spi0 {
> @@ -677,6 +705,68 @@ &spi0 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&spi0_pins>;
>         mediatek,pad-select = <0>;
> +
> +       cros_ec: ec@0 {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               compatible = "google,cros-ec-spi";
> +               reg = <0>;
> +               interrupts-extended = <&pio 4 IRQ_TYPE_LEVEL_LOW>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&cros_ec_int>;
> +               spi-max-frequency = <3000000>;
> +
> +               cros_ec_pwm: ec-pwm {
> +                       compatible = "google,cros-ec-pwm";
> +                       #pwm-cells = <1>;
> +               };

This only serves the keyboard backlight LED. However, we have a better
interface for that, described in

    Documentation/devicetree/bindings/chrome/google,cros-kbd-led-backlight.yaml

I think we should go with that one.


ChenYu

> +
> +               i2c_tunnel: i2c-tunnel {
> +                       compatible = "google,cros-ec-i2c-tunnel";
> +                       google,remote-bus = <0>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
> +               mt_pmic_vmc_ldo_reg: regulator@0 {
> +                       compatible = "google,cros-ec-regulator";
> +                       reg = <0>;
> +                       regulator-name = "mt_pmic_vmc_ldo";
> +                       regulator-min-microvolt = <1200000>;
> +                       regulator-max-microvolt = <3600000>;
> +               };
> +
> +               mt_pmic_vmch_ldo_reg: regulator@1 {
> +                       compatible = "google,cros-ec-regulator";
> +                       reg = <1>;
> +                       regulator-name = "mt_pmic_vmch_ldo";
> +                       regulator-min-microvolt = <2700000>;
> +                       regulator-max-microvolt = <3600000>;
> +               };
> +
> +               typec {
> +                       compatible = "google,cros-ec-typec";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       usb_c0: connector@0 {
> +                               compatible = "usb-c-connector";
> +                               reg = <0>;
> +                               power-role = "dual";
> +                               data-role = "host";
> +                               try-power-role = "source";
> +                       };
> +
> +                       usb_c1: connector@1 {
> +                               compatible = "usb-c-connector";
> +                               reg = <1>;
> +                               power-role = "dual";
> +                               data-role = "host";
> +                               try-power-role = "source";
> +                       };
> +               };
> +       };
>  };
>
>  &u3phy0 {
> @@ -728,3 +818,6 @@ &xhci3 {
>         vusb33-supply = <&mt6359_vusb_ldo_reg>;
>         vbus-supply = <&usb_vbus>;
>  };
> +
> +#include <arm/cros-ec-keyboard.dtsi>
> +#include <arm/cros-ec-sbs.dtsi>
> --
> 2.35.1
>
>
