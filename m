Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C10CA6119BA
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 19:58:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbiJ1R6V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 13:58:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbiJ1R6U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 13:58:20 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9451A20B12D
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 10:58:19 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id c8so4548532qvn.10
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 10:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z2rrxegvFg2FU9tdiMVnm2F7JFLebLK8/DzrkdwOia8=;
        b=fraNEttcjrbsQWUwMp/J+ZIx1bUNFBiwkQcyDOQ95PrT/Ks0L8ibhqyrNNhv+O299F
         A6ygkQQlI+xYVk440AFZ+hE3xghWHIBwToMAOFiBqv/00BlolCA8DouG4Mu54Y9tTKh+
         xlROBBFVesNR5GN94eEclsuL2A8mFYnWaSuk/1e0Q+jgACzlyq2SoWxUu0YDy6Rr9UpC
         lMPibTya5CqLdgxez8XUv2QadYFSuD9hDqNRnZeAWrPgM5hEjvGBBTsU1xE6tQEepu4L
         4QXW0AsPMWadTl/iAoAiaK53L8EMsKWejyZGupqUJKGuH1ANvotGiMJZ3O1kVuLOan+K
         7UFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z2rrxegvFg2FU9tdiMVnm2F7JFLebLK8/DzrkdwOia8=;
        b=QCbuOPaCaIWT+5Z5KlYFUmfQLn+qFNAjS3L9OuL1rW4vDewckkDQ0BG3W2ij8CGidU
         cPwJS3Q1JqsuPcyobomKmOg7ByH6syyywq9FFH3rXlz0IWe5SbzYjd8N8m9mJcou9J5C
         6lUfvMb4VxD864zEXxUzEgwMKzWacWu6vlAT/u8IKIn5edP7hqA1LB2CVxsuV7aI04/K
         XfB4Y/LWDUJ5pMpOZxbj8qWAa3clBdOeTpmRT99cXGCaLV053KqJZc2yekQtwKud9kic
         qLnxOgFTYijPnaeAK/nxVsNjpQMkkPZSmb7xlcEQFrWdSGbLs/4WIQ9mvjpamq9/yFnc
         NOgg==
X-Gm-Message-State: ACrzQf0O9ZmHylKckhFe6CYkx7VAVBdZlJj3sPkxXXQMgjEM+df80C+H
        K6xsF2mP2SF+J7rWx/qX3KRgiA==
X-Google-Smtp-Source: AMsMyM6quImhJlk5cn6eegtdWzH8grrjs4wtY1GdGHe9oHTnd9M/5Z7LjS0jMuspsFZFxBZYG0eHRg==
X-Received: by 2002:a05:6214:3005:b0:4ad:8042:128a with SMTP id ke5-20020a056214300500b004ad8042128amr545569qvb.66.1666979898742;
        Fri, 28 Oct 2022 10:58:18 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w26-20020a05620a0e9a00b006bb82221013sm3426268qkm.0.2022.10.28.10.58.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 10:58:18 -0700 (PDT)
Message-ID: <628ac98c-0755-e6f6-e010-f1e772c4b71a@linaro.org>
Date:   Fri, 28 Oct 2022 13:58:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 1/2] ASoC: mediatek: dt-bindings: modify machine
 bindings for two MICs case
Content-Language: en-US
To:     Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
        linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        "chunxu . li" <chunxu.li@mediatek.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?Q?N=c3=adcolas_F_=2e_R_=2e_A_=2e_Prado?= 
        <nfraprado@collabora.com>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
References: <20221028172215.1471235-1-ajye_huang@compal.corp-partner.google.com>
 <20221028172215.1471235-2-ajye_huang@compal.corp-partner.google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028172215.1471235-2-ajye_huang@compal.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/10/2022 13:22, Ajye Huang wrote:
> Add a property "dmic-gpios" for switching between two MICs.

Use subject prefixes matching the subsystem (git log --oneline -- ...).

> 
> Signed-off-by: Ajye Huang <ajye_huang@compal.corp-partner.google.com>
> ---
>  .../bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml        | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
> index 4fc5b045d3cf..212d2982590a 100644
> --- a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
> +++ b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
> @@ -21,6 +21,10 @@ properties:
>      $ref: "/schemas/types.yaml#/definitions/phandle"
>      description: The phandle of MT8186 ASoC platform.
>  
> +  dmic-gpios:
> +    maxItems: 1
> +    description: GPIO for switching between DMICs

Switching how? Enabling? What is the meaning of each GPIO pin value?

> +
>    headset-codec:
>      type: object
>      additionalProperties: false
> @@ -72,6 +76,8 @@ examples:
>          pinctrl-0 = <&aud_clk_mosi_off>;
>          pinctrl-1 = <&aud_clk_mosi_on>;
>  
> +        dmic-gpios = <&pio 23 0>;

Use defines for flags.

Best regards,
Krzysztof

