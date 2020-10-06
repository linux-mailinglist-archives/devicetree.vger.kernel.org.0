Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99BD528534F
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 22:43:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727176AbgJFUns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 16:43:48 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:44428 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726997AbgJFUns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 16:43:48 -0400
Received: by mail-ot1-f65.google.com with SMTP id a2so55780otr.11
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 13:43:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4LMhyTOT+VAAaRU5CJODNmpQONO/RSgV3tZAx3nzv1s=;
        b=YUz1AITTbziHuhOke2i1BNX9eDf0E3EEoqMfsYLSNEpWnfRn6R1cl/YgsbVSfk6VsE
         qtfBeSFUI2Ky7fI+KWX3MtYH4wNhV8QFS8i7utZ4EEZgch/6CIcq0DIGyJn2YreYrt7B
         HtXkQPrXIf+XGHkVl8JO1xD38G73HUULfLJSn+D2ijMIfW3V6RbSXwSudvK8/XTPwqAf
         1BuWMsEtxKXeKYP7+NQaVimYf/fkOdm6XfTrbTWbpDXjAjjDCuJOINzJGE9CtYEzljxj
         nTMyi3h9mGoRCzUubZZdQpj5g6NOOWioyKxetPgpqY/fEBQ6rC+8oJkFR2DPio/rbQ9r
         QOZA==
X-Gm-Message-State: AOAM5314Ow7Xo91LIEbZnsSBFPIL4Z/QES7brAQaZpek06RKGv762LTY
        hNqyHTHfPpO9VYmcPUGjNQ==
X-Google-Smtp-Source: ABdhPJxcFTHl/Zxl9qzw0vdVU0w3yDGzsHIJvGPcCAWCrYTm8MbmtyeEQMqz1oTH2yBnSUGZBdrqmA==
X-Received: by 2002:a05:6830:1be2:: with SMTP id k2mr675329otb.70.1602017026150;
        Tue, 06 Oct 2020 13:43:46 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o205sm1822353oig.8.2020.10.06.13.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 13:43:45 -0700 (PDT)
Received: (nullmailer pid 2804669 invoked by uid 1000);
        Tue, 06 Oct 2020 20:43:44 -0000
Date:   Tue, 6 Oct 2020 15:43:44 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     broonie@kernel.org, tiwai@suse.com, matthias.bgg@gmail.com,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com,
        maowenan@huawei.com
Subject: Re: [PATCH 5/5] dt-bindings: mediatek: mt8192: add
 mt8192-mt6358-rt1015-rt5682 document
Message-ID: <20201006204344.GA2791644@bogus>
References: <1601624142-18991-1-git-send-email-jiaxin.yu@mediatek.com>
 <1601624142-18991-6-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1601624142-18991-6-git-send-email-jiaxin.yu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 02, 2020 at 03:35:42PM +0800, Jiaxin Yu wrote:
> This patch adds document for the machine board with mt6358, rt1015 and rt5682.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  .../sound/mt8192-mt6359-rt1015-rt5682.yaml    | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
> new file mode 100644
> index 0000000000000..dff5004cd0368
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

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
> +    contains:

Drop this. Other strings shouldn't be allowed.

> +      const: mediatek,mt8192_mt6359_rt1015_rt5682

Just a list of part numbers? A different codec would be a different 
compatible and driver? You should have a link to the codec and you can 
read it's compatible to get what codec you have.

> +
> +  mediatek,platform:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description: |
> +     The DT/OF node which is used to specify the link's platform driver.

What's "link's platform driver"? A DT doesn't have drivers.

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
