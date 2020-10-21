Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD12294F40
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 16:56:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2442231AbgJUO4I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 10:56:08 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:44241 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2441838AbgJUO4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 10:56:07 -0400
Received: by mail-oi1-f193.google.com with SMTP id x62so2339794oix.11
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 07:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yLalAKEkjInUHTIemfTKDQJ49Jz0VY8t66NsoFtgLU4=;
        b=YjBfrmN2kQmd6c/2GNGp/OU3H/ZdtCSI4I00fQYqYl1OSA8k59J75R1qzc7yJdeRzG
         8uSzHxH2NgD927xCHuHvpQbDwSBh02SJcVPsVRnBig5esYuK2HjC5KSHAzE4JqJXR/uU
         0q8/uVn1x/79Tz2Vbu+sMul//68OonkPLelAfACC6qwR8RKzFCT4WJ4+A4cdGSGCsq9Q
         uXRfpepHHy14mevzrBJNBaIBp2wxmHPYpkB+6QA17jePi+UAwlY7Uvvqam216VyGcNAO
         alNrp/dhAd0FCRjue9yw2zlUNaBI6UyeAD/7FbndX/NKdI4BkpZWDdp0FAUqkhDTsBDO
         yKEw==
X-Gm-Message-State: AOAM533+oa4gGbVj7a1Q6+zpyHgGCV8BGX21pwnMQ5YINZsTIa/0lwp7
        cfmHr24LfcyCt5k1xlukXVxSzS+zzA==
X-Google-Smtp-Source: ABdhPJxy+68+KRz7O/jGvNfY0VnQsZU3nhhXkp7D0LUaX21+plv24AmcZ/0B8hoS/q6je6Yxg1/fIw==
X-Received: by 2002:aca:170a:: with SMTP id j10mr2651581oii.82.1603292166586;
        Wed, 21 Oct 2020 07:56:06 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v123sm733083oif.29.2020.10.21.07.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 07:56:05 -0700 (PDT)
Received: (nullmailer pid 2780046 invoked by uid 1000);
        Wed, 21 Oct 2020 14:56:05 -0000
Date:   Wed, 21 Oct 2020 09:56:05 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     broonie@kernel.org, tiwai@suse.com, matthias.bgg@gmail.com,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH v2 5/5] dt-bindings: mediatek: mt8192: add
 mt8192-mt6358-rt1015-rt5682 document
Message-ID: <20201021145605.GA2775711@bogus>
References: <1603270435-3548-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603270435-3548-6-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1603270435-3548-6-git-send-email-jiaxin.yu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 21, 2020 at 04:53:55PM +0800, Jiaxin Yu wrote:
> This patch adds document for the machine board with mt6358, rt1015
> and rt5682.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  .../sound/mt8192-mt6359-rt1015-rt5682.yaml    | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
> new file mode 100644
> index 0000000000000..4c39e88906fc1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR BSD-2-Clause)

GPL-2.0-only

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/mt8192-mt6359-rt1015-rt5682.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek MT8192 with MT6359, RT1015 and RT5682 ASoC sound card driver
> +
> +maintainers:
> +   - Jiaxin Yu <jiaxin.yu@mediatek.com>
> +   - Shane Chien <shane.chien@mediatek.com>
> +
> +description:
> +  This binding describes the MT8192 sound card.
> +
> +properties:
> +  compatible:
> +      const: mediatek,mt8192_mt6359_rt1015_rt5682

I still don't think this is the right way to do this.

> +
> +  mediatek,platform:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description: The phandle of MT8192 ASoC platform.

I still don't understand what this is.

> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - mediatek,platform
> +
> +examples:
> +  - |
> +
> +    sound: mt8192-sound {
> +        compatible = "mediatek,mt8192-mt6359-rt1015-rt5682";
> +        mediatek,platform = <&afe>;
> +        pinctrl-names = "aud_clk_mosi_off",
> +                        "aud_clk_mosi_on";
> +        pinctrl-0 = <&aud_clk_mosi_off>;
> +        pinctrl-1 = <&aud_clk_mosi_on>;
> +    };
> +
> +...
> -- 
> 2.18.0
