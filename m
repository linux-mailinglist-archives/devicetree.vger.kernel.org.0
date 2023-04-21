Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 218496EAF62
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 18:43:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233171AbjDUQnw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 12:43:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbjDUQnv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 12:43:51 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B548C641
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:43:50 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-504eccc8fc8so2703231a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682095429; x=1684687429;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sIuJOr9KDqgRyNZKu6Tt8XNVFok6Ecpq3eqDXh3VdVw=;
        b=lBQgSPyCip8rYuFpD+Us5fMponEiWICDi4kBwWqP5Gu6VnZDpRxF90JVMutN889EKh
         BklKXuWF0K0mMfc8jCX0zhVJHYmQ+OgHRfrDSwZnXv7BwbkN9TkrGVS+6VLWtIftCalK
         24g4MpMs+/2fwlJ5QYO+dTLQFWz9aW1Ma200XNRjpdyriDrKqyP6AguuNqgJrIXFFmAr
         Zo/Hx+b4IfPpjTKYCqYBPhgDzx6NDyCLPKbm0LnfGvwwyBbTRnhH+1TYmJa7Ffd4xug2
         INwJ+T5PyDE3ETo4Wy3lM7AJjxq5t3KThmm+D580q14eObdPzLZku1G2h6G6rH6Q1KAO
         bzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682095429; x=1684687429;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sIuJOr9KDqgRyNZKu6Tt8XNVFok6Ecpq3eqDXh3VdVw=;
        b=FN+utRUs3ILhmNQRCDSIGjWZe/TtNnGk7/bwE5/tDrsKXWBn/26V1bmEMY7Sw+I4z3
         F16D/XG6lwp4c8eUKsDnuiLkb3n3zSmlb5WMz+leXjXSBudFtWd4v2yntNq59N/5ao14
         Ojm2OkrlPJIQIncESMrOVYNCwqOQ8L1nKazPqiaqmoJ8ALGfUOzQvLKdxxWysP/vPjK4
         q0cvnDrHmrT9LncMjblD+nYmYbNmYK31oi2iQJ7PBKm+Jkc99WAuttO3he5KY8mJdx6g
         O3oMdb3Bk0+oiZryAQVLmne2sapkMY7FpTnHzgCCLZgpe/d5TuTDvT+NA8HhMyEYMVf8
         3krg==
X-Gm-Message-State: AAQBX9eBopCDloGTgpzB6KMilIO/ArKkAgR62Zx7Igb3CkQYSm5LkqaG
        8Psd6pITBbMWJVWNt7EEbGDzsg==
X-Google-Smtp-Source: AKy350Z9W1Awuyb/afDJDAwM+gnsZX1x4JGUQFrDP8K1cSk1huw1//Tq6t/V1q559iCtPTZ58No0sA==
X-Received: by 2002:a17:907:e92:b0:94a:4d06:3de3 with SMTP id ho18-20020a1709070e9200b0094a4d063de3mr3205814ejc.72.1682095428846;
        Fri, 21 Apr 2023 09:43:48 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:687d:8c5:41cb:9883? ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id t18-20020a17090616d200b0094f969e877bsm2242742ejd.43.2023.04.21.09.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 09:43:48 -0700 (PDT)
Message-ID: <5e622e88-5287-1ffc-aa9b-c7c85a661fd9@linaro.org>
Date:   Fri, 21 Apr 2023 18:43:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 7/7] ASoC: dt-bindings: mediatek,mt8188-afe: add audio
 properties
Content-Language: en-US
To:     Trevor Wu <trevor.wu@mediatek.com>, broonie@kernel.org,
        lgirdwood@gmail.com, tiwai@suse.com, perex@perex.cz,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com
Cc:     alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230421100905.28045-1-trevor.wu@mediatek.com>
 <20230421100905.28045-8-trevor.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230421100905.28045-8-trevor.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2023 12:09, Trevor Wu wrote:
> Assign top_a1sys_hp clock to 26M, and add apll1_d4 to clocks for switching
> the parent of top_a1sys_hp dynamically
> On the other hand, "mediatek,infracfg" is included for bus protection.
> 
> Signed-off-by: Trevor Wu <trevor.wu@mediatek.com>
> ---
>  .../bindings/sound/mediatek,mt8188-afe.yaml      | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml
> index 82ccb32f08f2..812e0702ca36 100644
> --- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml
> +++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml
> @@ -29,6 +29,10 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description: The phandle of the mediatek topckgen controller
>  
> +  mediatek,infracfg:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: The phandle of the mediatek infracfg controller
> +
>    power-domains:
>      maxItems: 1
>  
> @@ -52,6 +56,7 @@ properties:
>        - description: mux for i2si1_mck
>        - description: mux for i2si2_mck
>        - description: audio 26m clock
> +      - description: audio pll1 divide 4
>  
>    clock-names:
>      items:
> @@ -73,6 +78,7 @@ properties:
>        - const: i2si1_m_sel
>        - const: i2si2_m_sel
>        - const: adsp_audio_26m
> +      - const: apll1_d4
>  
>    mediatek,etdm-in1-cowork-source:
>      $ref: /schemas/types.yaml#/definitions/uint32
> @@ -147,6 +153,8 @@ required:
>    - power-domains
>    - clocks
>    - clock-names
> +  - assigned-clocks
> +  - assigned-clock-parents

You were explaining it last time, but it did not solve my concerns.
Requiring these properties means that your hardware boots with incorrect
clock parents, including result of any firmware, and there is no way it
can correctly work without reparenting. What's more, this means that
your clock hierarchy does not include these clocks for some reason, e.g.
you need to reparent parents of some parent of your clock input,
otherwise device cannot work. Cannot work never ever.

Is this the case?

Have in mind that bindings are used also by other OS and projects, like
bootloaders, firmware etc.

Best regards,
Krzysztof

