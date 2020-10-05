Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB7ED28370F
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 15:57:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726032AbgJEN5m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 09:57:42 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:36047 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725903AbgJEN5m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 09:57:42 -0400
Received: by mail-ot1-f68.google.com with SMTP id 60so8673765otw.3
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 06:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HLXvvMEroZCyEvFhhBCVsUsG4CTHlceWSEkbwHb7abs=;
        b=cZITGgJsPDBYMHGh2nli2Va6FAkz727U4pyj5uTmEYzlNaTENAL+96P0EFSLKz2io4
         NxG+LtlmECQqGIF1B4VXMpdBb7RzaX8M3byxi904MCsPBYsm7l2U4psea1f46WFDvZzI
         fzBIiUXOi1W2AGdVwiJpQgUZtKIx1xd8o8Z6qjkaO5jmmPQGbukWCwmLhZxh/2iNcwda
         RZ6V65HnrIwKY0/QSKwCEuohj80drNENCEmbnnukv4R3NmuRVHkZL+wycNWvrJY8qPJU
         jDJMs9bBTupv382mhzJuXfoQi9u1JJH9AjvWv68gvFXzySguqO5IyeiKVfISLxYO/2sk
         SdZw==
X-Gm-Message-State: AOAM5336dMMDnTjxAuBowGXQ8FqCakfHT1R5qmZZnQ9RHS0GEwzKwAH1
        CrFJZHO7H6vJ9yNlY5z2OFPVfOmDfsd/
X-Google-Smtp-Source: ABdhPJxLkuPrQ//lVhFii7F2n6/PROn58UkLIGod7jgA8Wt9oD/eivK+XCX5n8q/tj7bRI/v6tqR9w==
X-Received: by 2002:a9d:6f06:: with SMTP id n6mr11762976otq.302.1601906261016;
        Mon, 05 Oct 2020 06:57:41 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f11sm14515oot.4.2020.10.05.06.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 06:57:40 -0700 (PDT)
Received: (nullmailer pid 90619 invoked by uid 1000);
        Mon, 05 Oct 2020 13:57:39 -0000
Date:   Mon, 5 Oct 2020 08:57:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     broonie@kernel.org, tiwai@suse.com, matthias.bgg@gmail.com,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com,
        maowenan@huawei.com
Subject: Re: [PATCH 3/5] dt-bindings: mediatek: mt8192: add audio afe document
Message-ID: <20201005135739.GA87274@bogus>
References: <1601624142-18991-1-git-send-email-jiaxin.yu@mediatek.com>
 <1601624142-18991-4-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1601624142-18991-4-git-send-email-jiaxin.yu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 02, 2020 at 03:35:40PM +0800, Jiaxin Yu wrote:
> This patch adds mt8192 audio afe document.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> new file mode 100644
> index 0000000000000..43852315f1867
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

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
> +    contains:

So any other string in addition is okay?

> +      const: mediatek,mt8192-audio
> +
> +  interrupts:
> +    maxItems: 1
> +    description: AFE interrupt line

Drop description.

> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: audiosys
> +
> +  apmixedsys:
> +    maxItems: 1

This is an array?

> +    description: The mediatek apmixedsys controller
> +
> +  infracfg:
> +    maxItems: 1
> +    description: The mediatek infracfg controller
> +
> +  topckgen:
> +    maxItems: 1
> +    description: The mediatek topckgen controller

These all need a type reference and and vendor prefix.

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
> +  - power-domains
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt8192-clk.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/mt8192-power.h>
> +
> +    afe: mt8192-afe-pcm {
> +        compatible = "mediatek,mt8192-audio";
> +        interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>;
> +        resets = <&watchdog MT8192_TOPRGU_AUDIO_SW_RST>;
> +        reset-names = "audiosys";
> +        apmixedsys = <&apmixedsys>;
> +        infracfg = <&infracfg>;
> +        topckgen = <&topckgen>;
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
