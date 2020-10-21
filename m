Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1AB0294F15
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 16:52:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2443121AbgJUOw6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 10:52:58 -0400
Received: from mail-oo1-f67.google.com ([209.85.161.67]:43142 "EHLO
        mail-oo1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2443017AbgJUOw6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 10:52:58 -0400
Received: by mail-oo1-f67.google.com with SMTP id w25so597109oos.10
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 07:52:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=99z2vGoCi1tpnvfGwZuqAszQUrFfL3I1H9eFr7nC/HY=;
        b=l2fmlH1Nk7CJImvxWhAfNosJTj9JCxGfToV/LeHz9ub16MbcHSgm3WzLaFdiTOE/Mu
         lGYLgQjNUVIgFg7Pcupr1k5qAkJlk5BJZt4wU059zeOztlAvAKL61GGoRYYb+p5zpSqt
         9VC4cV1eGtVecS4uSWXIOiO5vJZ2oZVHFNcAqvm9R3b7n6e09UIa5NnInOZEgp7e/0l3
         Nkofd9U+i9aQjBf/01WsgF5P21Ly8/Xcjdt7fTOIL+gxC+3Dbkam7Sxr0RXYpVdZ6e8a
         R6JqAHVuC3XZ+POINxLbZcGKaWppouWyN1Gvg1JEK5FIFpics3oWGwYJswvknqjWgciT
         ulgw==
X-Gm-Message-State: AOAM5316xFFDYdsALAB4JoTBWPSI3dwmWnYydP2WtJZ+1lfL8eK3xCyG
        d2t/GHSHizPwLMIedmLvyA==
X-Google-Smtp-Source: ABdhPJyBz33K6vdvmgzKSmqSsK58IDBw5UYbGfCek0n6YPE6yQv1h/QpGWEBeK3DUpW+23Ogj8xDKQ==
X-Received: by 2002:a4a:b443:: with SMTP id h3mr2876908ooo.45.1603291977458;
        Wed, 21 Oct 2020 07:52:57 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t29sm649052otd.51.2020.10.21.07.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 07:52:56 -0700 (PDT)
Received: (nullmailer pid 2775005 invoked by uid 1000);
        Wed, 21 Oct 2020 14:52:55 -0000
Date:   Wed, 21 Oct 2020 09:52:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     broonie@kernel.org, tiwai@suse.com, matthias.bgg@gmail.com,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH v2 3/5] dt-bindings: mediatek: mt8192: add audio afe
 document
Message-ID: <20201021145255.GA2770956@bogus>
References: <1603270435-3548-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603270435-3548-4-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1603270435-3548-4-git-send-email-jiaxin.yu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 21, 2020 at 04:53:53PM +0800, Jiaxin Yu wrote:
> This patch adds mt8192 audio afe document.
> 
> This patch depends on following series that has not been accepted:
> https://patchwork.kernel.org/cover/11752231
> (dt-bindings/clock/mt8192-clk.h is included in it.)
> https://patchwork.kernel.org/patch/11755895
> (dt-bindings/power/mt8192-power.h is included in it.)
> https://lore.kernel.org/patchwork/patch/1321118
> (dt-bindings/reset-controller/mt8192-resets.h is included in it.)
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> new file mode 100644
> index 0000000000000..7c2f07b8b66dd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR BSD-2-Clause)

GPL-2.0-only OR BSD-2-Clause

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/mt8192-afe-pcm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek AFE PCM controller for mt8192
> +
> +maintainers:
> +   - Jiaxin Yu <jiaxin.yu@mediatek.com>
> +   - Shane Chien <shane.chien@mediatek.com>
> +
> +properties:
> +  compatible:
> +      const: mediatek,mt8192-audio
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: audiosys
> +
> +  mediatek,apmixedsys:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    maxItems: 1

A 'phandle' is already 1 item. Drop 'maxItems'.

> +    description: The phandle of the mediatek apmixedsys controller
> +
> +  mediatek,infracfg:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    maxItems: 1
> +    description: The phandle of the mediatek infracfg controller
> +
> +  mediatek,topckgen:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    maxItems: 1
> +    description: The phandle of the mediatek topckgen controller
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: AFE clock
> +      - description: ADDA DAC clock
> +      - description: ADDA DAC pre-distortion clock
> +      - description: audio infra sys clock
> +      - description: audio infra 26M clock
> +
> +  clock-names:
> +    items:
> +      - const: aud_afe_clk
> +      - const: aud_dac_clk
> +      - const: aud_dac_predis_clk
> +      - const: aud_infra_clk
> +      - const: aud_infra_26m_clk
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - resets
> +  - reset-names
> +  - mediatek,apmixedsys
> +  - mediatek,infracfg
> +  - mediatek,topckgen
> +  - power-domains
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt8192-clk.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/mt8192-power.h>
> +    #include <dt-bindings/reset-controller/mt8192-resets.h>
> +
> +    afe: mt8192-afe-pcm {
> +        compatible = "mediatek,mt8192-audio";
> +        interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>;
> +        resets = <&watchdog MT8192_TOPRGU_AUDIO_SW_RST>;
> +        reset-names = "audiosys";
> +        mediatek,apmixedsys = <&apmixedsys>;
> +        mediatek,infracfg = <&infracfg>;
> +        mediatek,topckgen = <&topckgen>;
> +        power-domains = <&scpsys MT8192_POWER_DOMAIN_AUDIO>;
> +        clocks = <&audsys CLK_AUD_AFE>,
> +                 <&audsys CLK_AUD_DAC>,
> +                 <&audsys CLK_AUD_DAC_PREDIS>,
> +                 <&infracfg CLK_INFRA_AUDIO>,
> +                 <&infracfg CLK_INFRA_AUDIO_26M_B>;
> +        clock-names = "aud_afe_clk",
> +                      "aud_dac_clk",
> +                      "aud_dac_predis_clk",
> +                      "aud_infra_clk",
> +                      "aud_infra_26m_clk";
> +    };
> +
> +...
> -- 
> 2.18.0
