Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B81E57FCF5
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 12:06:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234360AbiGYKGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 06:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234268AbiGYKGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 06:06:13 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 740AAC72
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:06:12 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-31f1b271dcbso12937867b3.10
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LYqjzKHYhMwQ2xFhMg/ufqPhz3dH4Hpwx5NkVknTPDM=;
        b=bhwD+QcNsbUB673ylUfp7LZ0jcRajqBGXRsFW2GjADwV6be/oiAHezjgBeQdbURMMc
         ObXtGWgcqngT5nTA5D6i9cbiOkhQm8Sc2zw0WLSM8hK9vOC2gKbyGRC9/miW5sBQsucR
         eIRfR+LMPauuP9nGdbq8YtQjMf9/iHAm4uojk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LYqjzKHYhMwQ2xFhMg/ufqPhz3dH4Hpwx5NkVknTPDM=;
        b=tTII6jvOaqubbYDMlrbFBEdl+LfeyzFUoie6ez4ySKd3+OjButV3jwsp6A3rOFZDDQ
         XW/Jpwfm3HiumO18k979jxn0pyvbVypwjp2gTbmhdh9yvyhmseIOz80wOmSxe7DA9Z0y
         z2KUxkTvg8K17Sj4dvCzFEpAT9SblSX6JCBKmAGvxYbrpH2iAhEvRQ00yty+GCEIEt0/
         pWf14zaolJLzdTFCPyhmImZihzX5Wzzgp5dhVIIKVSnFQC7JrHAK/C3JBu8ZXEeyLJKm
         dCTZy8HtrYpAvvWAttouxhhrOHTuHNCMoxTc7cDiK51qPSMDO8VQvcZsBsphf3OSaRgA
         K5LQ==
X-Gm-Message-State: AJIora/Q/hl5fR7CHrbqvLw3yEroS76IDIk9xNyvJ5M9FQtTVV7YSBTr
        d8g7m1W1l2ISe4xC4Te3lWPBgzhkzpzOTKM/svGi6Q==
X-Google-Smtp-Source: AGRyM1u4BtJDEDt3wgTRBtoNExFFh0MgTCOqzSNDZo6wbcpFMl2CeWJaiVmTN92OSICmkkMUvjmQyUhCGLa5/ceqEI4=
X-Received: by 2002:a81:610:0:b0:31e:4822:6807 with SMTP id
 16-20020a810610000000b0031e48226807mr9157043ywg.354.1658743571701; Mon, 25
 Jul 2022 03:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220721145017.918102-1-angelogioacchino.delregno@collabora.com>
 <20220721145017.918102-8-angelogioacchino.delregno@collabora.com>
 <CAGXv+5FR-HdPc-_c18Svdx0aviR-+b4ikf6MfbzaLWCcF1catA@mail.gmail.com> <b11386d3-3b28-617e-1dc6-1d862952aff7@collabora.com>
In-Reply-To: <b11386d3-3b28-617e-1dc6-1d862952aff7@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 25 Jul 2022 18:06:01 +0800
Message-ID: <CAGXv+5EGW-4zOWa4bhJz6ODt_P-u4Qepc+YR9=7-Yk+CsJ7K3w@mail.gmail.com>
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

On Mon, Jul 25, 2022 at 6:04 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 25/07/22 11:57, Chen-Yu Tsai ha scritto:
> > n Thu, Jul 21, 2022 at 10:53 PM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Add a pwm-leds node to enable the PWM controlled keyboard backlight.
> >>
> >> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> >> ---
> >>   arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 13 +++++++++++++
> >>   1 file changed, 13 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> >> index ca9955a97f8f..9086a440a995 100644
> >> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> >> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> >> @@ -4,6 +4,7 @@
> >>    */
> >>
> >>   #include <dt-bindings/gpio/gpio.h>
> >> +#include <dt-bindings/leds/common.h>
> >>   #include "mt8195.dtsi"
> >>   #include "mt6359.dtsi"
> >>
> >> @@ -31,6 +32,18 @@ dmic_codec: dmic-codec {
> >>                  wakeup-delay-ms = <50>;
> >>          };
> >>
> >> +       led-controller {
> >> +               compatible = "pwm-leds";
> >> +
> >> +               keyboard_backlight: keyboard-backlight {
> >> +                       default-state = "off";
> >> +                       function = LED_FUNCTION_KBD_BACKLIGHT;
> >> +                       label = "cros_ec::kbd_backlight";
> >> +                       max-brightness = <1023>;
> >> +                       pwms = <&cros_ec_pwm 3>;
> >> +               };
> >> +       };
> >> +
> >
> > This didn't work for me. However using "google,cros-kbd-led-backlight"
> > under the EC did. That might be a better option.
>
> Strange. But okay if there's a better option I'll check that out for v3.

It might be an EC firmware version issue. My devices are all running
test images, and don't automatically update the EC firmware.

For reference, mine is at:

RO:    tomato_v2.0.10686-234e646fd8
        tomato_14268.0.0
RW:    tomato_v2.0.10686-234e646fd8
        tomato_14268.0.0
Build:    tomato_v2.0.10686-234e646fd8 tomato_14268.0.0
        2021-10-07 09:00:32
        @chromeos-ci-legacy-us-central2-d-x32-34-us9d

ChenYu

> Cheers!
> Angelo
>
> >
> > ChenYu
> >
> >>          memory@40000000 {
> >>                  device_type = "memory";
> >>                  reg = <0 0x40000000 0 0x80000000>;
> >> --
> >> 2.35.1
> >>
> >>
> >> _______________________________________________
> >> linux-arm-kernel mailing list
> >> linux-arm-kernel@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
