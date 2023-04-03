Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A64E66D4150
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 11:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231649AbjDCJxL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 05:53:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232178AbjDCJwr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 05:52:47 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A98A527F
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 02:52:03 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id y4so114957702edo.2
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 02:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680515512;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9nr+uA+ZP2tbdI/0kq6sL0Hql+LVt1wSnJCPSdLceG0=;
        b=Cht9Y2vM9TnL6su8oK8fsrE+NlCl07kvCeH1Ss3sQEfVIz+3oASpya8J2AUWrJpxgM
         SCco5IOUvSki5XMqFCC4gafwpE/N2km04ZRJsINqM4MoK61Z0KdpyV7ITRhLu65xJutg
         BktbY7DuUBSmVmAV1DiTyvagSErGI7E1jJkNyHch88mu8hG5+LmfWFS7W0wDU6iX8Xd7
         jjoiZ2Mz9fTYaT4UfPLDTG2x0ZfE6p3iZJzIkx9/oqavMrZ21qiPc7GkYID+SHdq81lL
         jm0UAAvOfhbRjfUD/kgK0iiBMMKWc2qEJw7CNQuj2S4JYsZ6z0aZ69ArQqmr274p3o54
         lcAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680515512;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9nr+uA+ZP2tbdI/0kq6sL0Hql+LVt1wSnJCPSdLceG0=;
        b=GrvOVJhjuomvi7goSIAYuzPTtQXG+4nQJEk+incqCNECR5SeZrTUYFrte7ZN6G+0Q9
         Nt+kHiKtxBUNSWo6N41u4NI+CLfZJ+UAeZSXD35PwivaQ3d1VAbNWPdvG8HNZyNsgnmd
         88q+I7C+jBZ1L/N25wT+BGKm7P4xwSjV3f9eqaOwe7jymGFFwOsUY2RyjnvTvofgJK3d
         3CwH6OMZVQdNTKUkDBaUG6qDYWUs0k6zeBkZ2yLjphYoFmepLh/YNeEKO6PAe2s0w1/A
         YBWRwANr8hEXRwX0HOVIb2lutOeykupSB1gaPZlfE8ob0ix1aif1kIBAtroTXU3EbYaK
         Mh/w==
X-Gm-Message-State: AAQBX9fSofVoHPZskTK1uUHMUHefm7zs4/WEJiKu0ydfmF/9TTY2gO/O
        afg+/wfQHkoh8q9RjpSGdE1TsA==
X-Google-Smtp-Source: AKy350Z7S5nIBg15xObBEMjnFcgoXpWwPfgC871POYyYAMKORNyzeGXP8WOT94M+1eeV1eh2TBj2wA==
X-Received: by 2002:aa7:c587:0:b0:502:9296:a456 with SMTP id g7-20020aa7c587000000b005029296a456mr6634276edq.4.1680515512470;
        Mon, 03 Apr 2023 02:51:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id o1-20020a50c281000000b00502b0b0d75csm314317edf.46.2023.04.03.02.51.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:51:51 -0700 (PDT)
Message-ID: <6c9c74ee-b9ed-815f-dd92-37eb4c8f802a@linaro.org>
Date:   Mon, 3 Apr 2023 11:51:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] phy: mtk-mipi-csi: add driver for CSI phy
Content-Language: en-US
To:     Julien Stephan <jstephan@baylibre.com>
Cc:     Phi-bang Nguyen <pnguyen@baylibre.com>,
        Louis Kuo <louis.kuo@mediatek.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Andy Hsieh <andy.hsieh@mediatek.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        "moderated list:ARM/Mediatek USB3 PHY DRIVER" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek USB3 PHY DRIVER" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:DRM DRIVERS FOR MEDIATEK" 
        <dri-devel@lists.freedesktop.org>
References: <20230403071929.360911-1-jstephan@baylibre.com>
 <20230403071929.360911-3-jstephan@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230403071929.360911-3-jstephan@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/04/2023 09:19, Julien Stephan wrote:
> From: Phi-bang Nguyen <pnguyen@baylibre.com>
> 
> This is a new driver that supports the MIPI CSI CD-PHY for mediatek
> mt8365 soc
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
> [Julien Stephan: use regmap]
> [Julien Stephan: use GENMASK]
> Co-developed-by: Julien Stephan <jstephan@baylibre.com>
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  .../bindings/phy/mediatek,csi-phy.yaml        |   9 +-
>  MAINTAINERS                                   |   1 +
>  drivers/phy/mediatek/Kconfig                  |   8 +
>  drivers/phy/mediatek/Makefile                 |   2 +
>  .../phy/mediatek/phy-mtk-mipi-csi-rx-reg.h    | 435 ++++++++++++++++++
>  drivers/phy/mediatek/phy-mtk-mipi-csi.c       | 392 ++++++++++++++++
>  6 files changed, 845 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-rx-reg.h
>  create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi.c
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
> index c026e43f35fd..ad4ba1d93a68 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml

NAK, bindings are always separate patches. It also does not make any
sense - you just added it.

> @@ -33,9 +33,14 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    phy@10011800 {
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      phy@11c10000 {
>          compatible = "mediatek,mt8365-mipi-csi";
> -        reg = <0 0x10011800 0 0x60>;
> +        reg = <0 0x11c10000 0 0x4000>;
>          #phy-cells = <1>;
> +      };
>      };



k_mipi_dphy_of_match[] = {
> +	{.compatible = "mediatek,mt8365-mipi-csi"},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mtk_mipi_dphy_of_match);
> +
> +static struct platform_driver mipi_dphy_pdrv = {
> +	.probe = mtk_mipi_dphy_probe,
> +	.remove = mtk_mipi_dphy_remove,
> +	.driver	= {
> +		.name	= "mtk-mipi-csi",
> +		.of_match_table = of_match_ptr(mtk_mipi_dphy_of_match),

Drop of_match_ptr(). You should see W=1 warnings when compile testing.


Best regards,
Krzysztof

