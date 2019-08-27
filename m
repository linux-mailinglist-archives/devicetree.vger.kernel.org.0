Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F5E99EB04
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 16:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726054AbfH0O3s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 10:29:48 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:44251 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725987AbfH0O3s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 10:29:48 -0400
Received: by mail-ed1-f66.google.com with SMTP id a21so31646666edt.11
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 07:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7BaT7WqHF/e/bUnH+2TrTHyVYT8MU5OxXpD2wLaF+Io=;
        b=nbMqFKxwKOofoDJAY+1HscSB3fGne1K7+dmEaizgqfalXHsvcxGxedsC9T4R69MqOQ
         qXti+ZANxB9naCKkPpQR73H/mCbMcwmcKWLISw/vpbab2ACW0I/GXldDXUMpNEeMiCtx
         H7F4FxshWaML0QWoVjMVmPwXUItjFhEirn5mQe8lqA3bY7mzAkAd8Cw3DLLo5I5rEdD8
         rAyiFSMp/nBWqc+T0ftaiWbpozAdtSqLimJlmismEqNkDbWgqtrUBI86wymka9WPV2tu
         0JXmzewEXtEFRA3MRg6MDttBaI6lecZCkHO25HJkC/R4Tp1EBFrxAyvM4y7ZcTIkglYq
         wSmw==
X-Gm-Message-State: APjAAAUjOkxVt7zD4SfjU7ptFsqO6T1gvBbOzRWlkTlgJkYTeHTddCzt
        5hiTzpUoSq6b4U1glK5kpw6NyBBrwh4=
X-Google-Smtp-Source: APXvYqxgCHN/mh+9cYpHvIhTlE1k5W1eZWm6e6bTy6PF+XTfCwS/w3BbYlJmjlM10PAFtpoVFL8v4w==
X-Received: by 2002:aa7:c897:: with SMTP id p23mr24008628eds.220.1566916185101;
        Tue, 27 Aug 2019 07:29:45 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id a22sm3557073eju.80.2019.08.27.07.29.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 07:29:44 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id g67so3299297wme.1
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 07:29:44 -0700 (PDT)
X-Received: by 2002:a05:600c:292:: with SMTP id 18mr29403987wmk.51.1566916184111;
 Tue, 27 Aug 2019 07:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190827142547.14577-1-mripard@kernel.org> <20190827142547.14577-3-mripard@kernel.org>
In-Reply-To: <20190827142547.14577-3-mripard@kernel.org>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Tue, 27 Aug 2019 22:29:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
Message-ID: <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: sound: Convert Allwinner A33 codec to a schema
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 27, 2019 at 10:25 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../sound/allwinner,sun8i-a33-codec.yaml      | 57 +++++++++++++++++
>  .../bindings/sound/sun8i-a33-codec.txt        | 63 -------------------
>  2 files changed, 57 insertions(+), 63 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> new file mode 100644
> index 000000000000..5e7cc05bbff1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a33-codec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A33 Codec Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  compatible:
> +    const: allwinner,sun8i-a33-codec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +
> +required:
> +  - "#sound-dai-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    audio-codec@1c22e00 {
> +      #sound-dai-cells = <0>;
> +      compatible = "allwinner,sun8i-a33-codec";
> +      reg = <0x01c22e00 0x400>;
> +      interrupts = <0 29 4>;
> +      clocks = <&ccu 47>, <&ccu 92>;
> +      clock-names = "bus", "mod";
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> deleted file mode 100644
> index 7ecf6bd60d27..000000000000
> --- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> +++ /dev/null
> @@ -1,63 +0,0 @@
> -Allwinner SUN8I audio codec
> -------------------------------------
> -
> -On Sun8i-A33 SoCs, the audio is separated in different parts:
> -         - A DAI driver. It uses the "sun4i-i2s" driver which is
> -         documented here:
> -         Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
> -         - An analog part of the codec which is handled as PRCM registers.
> -         See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
> -         - An digital part of the codec which is documented in this current
> -         binding documentation.
> -         - And finally, an audio card which links all the above components.
> -         The simple-audio card will be used.
> -         See Documentation/devicetree/bindings/sound/simple-card.txt
> -
> -This bindings documentation exposes Sun8i codec (digital part).
> -
> -Required properties:
> -- compatible: must be "allwinner,sun8i-a33-codec"
> -- reg: must contain the registers location and length
> -- interrupts: must contain the codec interrupt
> -- clocks: a list of phandle + clock-specifer pairs, one for each entry
> -  in clock-names.
> -- clock-names: should contain followings:
> -   - "bus": the parent APB clock for this controller
> -   - "mod": the parent module clock
> -
> -Here is an example to add a sound card and the codec binding on sun8i SoCs that
> -are similar to A33 using simple-card:
> -
> -       sound {
> -               compatible = "simple-audio-card";
> -               simple-audio-card,name = "sun8i-a33-audio";
> -               simple-audio-card,format = "i2s";
> -               simple-audio-card,frame-master = <&link_codec>;
> -               simple-audio-card,bitclock-master = <&link_codec>;
> -               simple-audio-card,mclk-fs = <512>;
> -               simple-audio-card,aux-devs = <&codec_analog>;
> -               simple-audio-card,routing =
> -                               "Left DAC", "Digital Left DAC",
> -                               "Right DAC", "Digital Right DAC";

At some point we should start listing the endpoints available for routing?

ChenYu

> -
> -               simple-audio-card,cpu {
> -                       sound-dai = <&dai>;
> -               };
> -
> -               link_codec: simple-audio-card,codec {
> -                       sound-dai = <&codec>;
> -               };
> -
> -       soc@1c00000 {
> -               [...]
> -
> -               audio-codec@1c22e00 {
> -                       #sound-dai-cells = <0>;
> -                       compatible = "allwinner,sun8i-a33-codec";
> -                       reg = <0x01c22e00 0x400>;
> -                       interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> -                       clocks = <&ccu CLK_BUS_CODEC>, <&ccu CLK_AC_DIG>;
> -                       clock-names = "bus", "mod";
> -               };
> -       };
> -
> --
> 2.21.0
>
