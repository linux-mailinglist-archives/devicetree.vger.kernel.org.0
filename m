Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F340690268
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 09:47:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbjBIIrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 03:47:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbjBIIrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 03:47:15 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42BE922A21
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 00:47:14 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id h16so968209wrz.12
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 00:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gNxrYafZPgwkI9Zs1VddIiODgFm8O0UYgQsUcqELM8E=;
        b=M/IqiT5bfF2H2m7rp+kNBZYDXUMi6g0BSid0W4hQ+sVsYfyCr4xv0e+OcKt3THpg3D
         aeF8u4euFYL3Vk97qTsryho5y//inzGHfXQAX4JAWC+SuQp6RWlCU8Q4cv/Wbh5Z1Oix
         cZ4e9/PjUR3lczRKICPz5erR6N2wsJi97x9OzBqGBaUBesUhBaRhpQL1dr32PqTQ9nNM
         YJqIkY1rAuP5eWX6ONuFl4x1aI0gRrjoWWDA5KAai6JiiHN7h7tkYDnOpza8g1SFSyL2
         CZT55WZ/OsGr8sNNh17AgaKt4e9YIC64hOrd7zwWMILXYJgGM2u8IPaSIVfYUErSPinS
         F0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gNxrYafZPgwkI9Zs1VddIiODgFm8O0UYgQsUcqELM8E=;
        b=v1Bpkx+1ZC4W/LS1e9XBk379enO6o9bcE8bUktlr2k0EezHN2HsuflCVpd7wUNUHUF
         W/GKgnSTZ4yAIII6NtZ+pj6OxV59rY2SwI4/IZRVY+AdrrU7Csk9JiSyAhIFWazEzg7Y
         7hoc7joUAZAJJAvu4ho1qhr8jLRnZ+KuuS1komgs3wNnggPT8bKKeIw5nOx3SMtT6cRc
         ZQTpX0Mlnee0vLecJAno0tCxHt4GtqHIMWbBQpK3qNXtIsgwXzjHSb4RoYZbmJ6vfiNU
         bLH2sf+XRfgnSHyoRyyfkd+SOoEJX/kQCIMOl+bsCNFgd08DBgq3dPD3iJabN41RwJLl
         wMtA==
X-Gm-Message-State: AO0yUKWLYmDUe+g+JYfi21kOuCpyR83F4SxRL98pIwNlWWi6JUnxWR1D
        nlBPYZI/c1Ge1aRFp2/OJEbBXusblyregVyi
X-Google-Smtp-Source: AK7set+CAKpxvDUCxsfDlhqJVlXOXj4uGBOiNFeNOcybsM4BZdQQKESjC9ggTPmEbdrpp99Z3EPGEw==
X-Received: by 2002:adf:db88:0:b0:2bf:b92b:8a8a with SMTP id u8-20020adfdb88000000b002bfb92b8a8amr9410439wri.7.1675932432804;
        Thu, 09 Feb 2023 00:47:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p3-20020adff203000000b002c3f6d7d5fesm682882wro.44.2023.02.09.00.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 00:47:12 -0800 (PST)
Message-ID: <072724aa-2bf3-32a6-dee8-e74c74b01019@linaro.org>
Date:   Thu, 9 Feb 2023 09:47:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com>
 <87v8kbbpl4.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87v8kbbpl4.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 02:22, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> There are no compatible for "reg/reg-names" and "clock-name"
> between previous R-Car series and R-Car Gen4.
> 
> "reg/reg-names" needs 3 categorize (for Gen1, for Gen2/Gen3, for Gen4),
> therefore, use 3 if-then to avoid nested if-then-else.
> 
> Move "clock-name" property to under allOf to use if-then-else.
> 
> Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com/#r
> Reported-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.yaml          | 80 +++++++++++++++----
>  1 file changed, 65 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index 12ccf29338d9..5fd6435f4873 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -99,20 +99,6 @@ properties:
>      minItems: 1
>      maxItems: 31
>  
> -  clock-names:
> -    description: List of necessary clock names.
> -    minItems: 1
> -    maxItems: 31

No improvements here. Your argument that you need to remove it to
customize is not correct.

https://elixir.bootlin.com/linux/v5.19-rc6/source/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml#L57

Best regards,
Krzysztof

