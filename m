Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 406AC57FCC9
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 11:58:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231982AbiGYJ6B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 05:58:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbiGYJ6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 05:58:00 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAC0517048
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 02:57:58 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id f73so19118727yba.10
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 02:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VQbkePjTZTGBHhHNdPkVayN1pzQM5oP8jjbvr/Dc6xc=;
        b=GKsMNthIl/nHv3s4pIAp4//iOle4vnauGjgQk5AiuZ/cN1ovOSttLGtV2WfD96BLIu
         U+HSskxdf09TYHGZnrR1NXnuQGq/VTyyawhImCx0qQYbk6hHsbuNOVdnj+c7/xYF4JTv
         O2/DrdAJDxBRjx11t/OjFDIlclwqmUqt1K6p4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VQbkePjTZTGBHhHNdPkVayN1pzQM5oP8jjbvr/Dc6xc=;
        b=fyF5ZzfzdU7fdGvi6piIj1ZmFh3628gt4E/0JjGfN0k/nMKM3SvW61VNFP0XTN0HKe
         9PKwOqEpsWE3unljwUdiTnY49XZm+77rlGLREmXvQw7Cm/EZyQ21lLeAjIuIRo0KUM8B
         1trMZQ1ptz6/Rg8mOzewuOxe4q/z6/orNqUjBdrX9XMaxxxDGSeVvSxgONb4jfA2mEHh
         k/4zdMlaRfV8WZKXOsGdf7HZc8WDCpMNdRl8gNssQ15nlAXk3qbnHUQReQCco7O9CkDS
         TF+YQAn2RYNJDu1Vl1CR1MDXoJZZlOUjm93zluQ1Nougk4oH1si7EDTEjm2P1oW+uuAu
         4w/g==
X-Gm-Message-State: AJIora/gPfkWsFRZ1YvcInz/ytuj0Wgn+/G7gN0de7IeF3SNayv/ObmV
        aJi+B6FywY/7BFbnlbl2Jnk813e9GQ6Se+hkx6A9mA==
X-Google-Smtp-Source: AGRyM1vpw8Qdjvlaj8NOuT0GEe5Ha3tFWQOx0/4AUrT7WihQIvnc7eW1QgGSAz+MsXJC8OkWSPB0iyyHgW/yyITv/Vc=
X-Received: by 2002:a25:d852:0:b0:66f:259c:17b6 with SMTP id
 p79-20020a25d852000000b0066f259c17b6mr9047848ybg.438.1658743078168; Mon, 25
 Jul 2022 02:57:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220721145017.918102-1-angelogioacchino.delregno@collabora.com> <20220721145017.918102-8-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220721145017.918102-8-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 25 Jul 2022 17:57:47 +0800
Message-ID: <CAGXv+5FR-HdPc-_c18Svdx0aviR-+b4ikf6MfbzaLWCcF1catA@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] arm64: dts: mediatek: cherry: Enable keyboard PWM backlight
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

n Thu, Jul 21, 2022 at 10:53 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add a pwm-leds node to enable the PWM controlled keyboard backlight.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> index ca9955a97f8f..9086a440a995 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -4,6 +4,7 @@
>   */
>
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
>  #include "mt8195.dtsi"
>  #include "mt6359.dtsi"
>
> @@ -31,6 +32,18 @@ dmic_codec: dmic-codec {
>                 wakeup-delay-ms = <50>;
>         };
>
> +       led-controller {
> +               compatible = "pwm-leds";
> +
> +               keyboard_backlight: keyboard-backlight {
> +                       default-state = "off";
> +                       function = LED_FUNCTION_KBD_BACKLIGHT;
> +                       label = "cros_ec::kbd_backlight";
> +                       max-brightness = <1023>;
> +                       pwms = <&cros_ec_pwm 3>;
> +               };
> +       };
> +

This didn't work for me. However using "google,cros-kbd-led-backlight"
under the EC did. That might be a better option.

ChenYu

>         memory@40000000 {
>                 device_type = "memory";
>                 reg = <0 0x40000000 0 0x80000000>;
> --
> 2.35.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
