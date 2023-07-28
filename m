Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF03E766D97
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 14:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234726AbjG1MtR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 08:49:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233872AbjG1MtQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 08:49:16 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93D7530E2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:49:14 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-977e0fbd742so286335466b.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690548553; x=1691153353;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pbse/FL/bYEXl8Mf1x5aLqpTAzrAh7Ly043ErMcYY4k=;
        b=c/cFY5nVzAvu7QFQu1rz7uRvwVsVKG81Ki6j04f4TsAe7ATGVGdS4FzmF8VIboOogg
         dd5WRmUNjpKbJGx/YMPDWZl10r9zQSNGavTTjKyMXEow2Vb5e7LH6bUbiGpHpcML3k8v
         3SeNsF7yJU0tZijtUh+Kw4f0T7YzLA9+NPx9BRBafhkq92wHdco7DuK1vfE0xMxB55gv
         QRjZ+hijsp+NXXVbCzxb+sdm1X9NtOsNCCw5b9At1K7cQkiTGixF5vzjb92P7AyY//vo
         Zym9fOFDvmUsQxhpPloWOrTnZE/T1K7GJXtg5Wfr3E1WhYhI3qE8i9OryjYPlcbM6xJr
         HEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690548553; x=1691153353;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pbse/FL/bYEXl8Mf1x5aLqpTAzrAh7Ly043ErMcYY4k=;
        b=HFMp2kQVs3+WUZU+2lltc8W69katISyEgK39DeRNhFTSI8PoJplxsQ0zZa7jd6w6up
         zTNFbFlEBWH+xQEwq0oHvvU3ftIhttGOy95DDNn/sreb8/N2f8GC/1MguU1L24Nl8H4b
         ivNUtTGz2sJCrisCJpwMr/j4zeSptRFH5EDMmlqH8losQNj+HMUj1EGYy2f5DplcdSUh
         K4863KXOnC+tJ+35ddALFaOtzYAfRvF8UbdKUwgM8uoRGp5O6FEJB0bfWBgOB5+6e3kT
         hPDYLNUlWW+OLoxKuvnGyTPT90yFklJJlu1ESu57gV4jo365YDeLEUyv765QoWqu255Q
         mihw==
X-Gm-Message-State: ABy/qLaGeNgZ4rMpKKNifu8uvejhATc8nQhqdjeMzXvIHjxt589Q3jUN
        v3zWN/8HcmW6lwvEwFRiDV2HVg==
X-Google-Smtp-Source: APBJJlE7Un/8lOfEtuAAfoTFWj+mEND0Z4JJSWgUz9Y7zsFlTWcgLUkH/JhnP38nXuMjCviOhje1ng==
X-Received: by 2002:a17:906:64d5:b0:991:e458:d14 with SMTP id p21-20020a17090664d500b00991e4580d14mr2238981ejn.34.1690548552914;
        Fri, 28 Jul 2023 05:49:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id mb5-20020a170906eb0500b0098963eb0c3dsm2010040ejb.26.2023.07.28.05.49.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 05:49:12 -0700 (PDT)
Message-ID: <7d70f893-ee75-d355-4b4c-4afe7a72cd7c@linaro.org>
Date:   Fri, 28 Jul 2023 14:49:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 5/6] ASoC: dt-bindings: mediatek,mt7986-wm8960: add
 mt7986-wm8960 document
Content-Language: en-US
To:     Maso Huang <maso.huang@mediatek.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Trevor Wu <trevor.wu@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Mars Chen <chenxiangrui@huaqin.corp-partner.google.com>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230728090819.18038-1-maso.huang@mediatek.com>
 <20230728090819.18038-6-maso.huang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728090819.18038-6-maso.huang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 11:08, Maso Huang wrote:
> Add document for mt7986 board with wm8960.
> 
> Signed-off-by: Maso Huang <maso.huang@mediatek.com>
> ---
>  .../sound/mediatek,mt7986-wm8960.yaml         | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt7986-wm8960.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt7986-wm8960.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt7986-wm8960.yaml
> new file mode 100644
> index 000000000000..76394f7e5502
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mediatek,mt7986-wm8960.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/mediatek,mt7986-wm8960.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek MT7986 sound card with WM8960 codec
> +
> +maintainers:
> +  - Maso Huang <maso.huang@mediatek.com>
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt7986-wm8960-machine
> +
> +  mediatek,platform:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: The phandle of MT7986 platform.
> +
> +  audio-routing:
> +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> +    description:
> +      A list of the connections between audio components. Each entry is a
> +      sink/source pair of strings. Valid names could be the input or output
> +      widgets of audio components, power supplies, MicBias of codec and the
> +      software switch.
> +
> +  mediatek,audio-codec:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: The phandle of wm8960 codec.
> +

How did you implement Rob's comment? Or did you just ignore it?

Best regards,
Krzysztof

